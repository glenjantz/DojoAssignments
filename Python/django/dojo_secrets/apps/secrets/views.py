from django.shortcuts import render, redirect, HttpResponse
from .models import User, Secret
from django.contrib import messages
from django.db.models import Count
# Create your views here.
def index(request):
    return render(request, 'secrets/index.html')

def register(request):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    user = User.userManager.register(request.POST['firstname'], request.POST['lastname'], request.POST['email'], request.POST['password'], request.POST['passc'])
    if 'errors' in user:
        error = user['errors']
        for msg in error:
             messages.error(request, msg)
        return redirect('/')
    else:
        messages.success(request, 'Successfully registered!')
        User.userManager.create(first_name= user['first_name'], last_name= user['last_name'], email = user['email'], password = user['password'])
        user = User.userManager.filter(email = user['email'])
        request.session['userid'] = user[0].id
    return redirect('/secrets')

def secrets(request):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    context = {'user': User.userManager.all(), 'loggeduser': User.userManager.get(id=request.session['userid']), 'postedsecrets': Secret.Secretmanager.annotate(count=(Count('likedby'))).order_by('-created_at')[:5]}
    return render(request, 'secrets/secrets.html', context)

def login(request):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    user = User.userManager.login(request.POST['email'], request.POST['password'])
    if 'errors' in user:
        error = user['errors']
        for msg in error:
            messages.error(request, msg)
        return redirect('/')
    else:
        messages.success(request, 'Successfully logged in!')
        user = User.userManager.filter(email = request.POST['email'])
        request.session['userid'] = user[0].id
        return redirect('/secrets')

def logout(request):
    if 'userid' not in request.session:
        return redirect('/')
    del request.session['userid']
    return redirect('/')

def delete(request, id):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    User.userManager.filter(id=id).delete()
    return redirect('/logout')
def any(request):
    messages.error(request, 'Nice try.')
    return redirect('/')

def postsecret(request):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    secret = Secret.Secretmanager.validate(request.POST['makesecret'])
    if 'error' in secret:
        messages.error(request, "Secret field must not be blank")
        return redirect('/secrets')
    else:
        Secret.Secretmanager.create(content = request.POST['makesecret'], creator = User.userManager.get(id=request.session['userid']))
        return redirect('/secrets')
def likesecret(request,word, secretid):
    if request.method == "GET":
        return redirect('/')

    secret = Secret.Secretmanager.addlike(secretid, request.session['userid'])
    if 'errors' in secret:
        messages.error(request, secret['errors'])
    if word == "sec":
        return redirect('/secrets')
    else:
        return redirect('/mostpopularsecrets')


def deletesecret(request,word, id):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    Secret.Secretmanager.filter(id=id).delete()
    if word == "pop":
        return redirect('/mostpopularsecrets')
    else:
        return redirect('/secrets')
def mostpopularsecrets(request):
    if 'userid'not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    secrets = Secret.Secretmanager.annotate(count=(Count('likedby'))).order_by('-count')
    context = {
        'mostpop': secrets,
        'loggeduser': User.userManager.get(id=request.session['userid']),
    }
    return render(request, 'secrets/mostpopular.html', context)
