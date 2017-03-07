from django.shortcuts import render, HttpResponse, redirect
from .models import User, Trip
from django.contrib import messages
# Create your views here.
def index(request):
    return render(request, 'practice/index.html')

def register(request):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    user = User.objects.register(request.POST)
    if 'error' in user:
        error = user['error']
        for msg in error:
            messages.error(request, msg)
        return redirect('/')
    else:
        messages.success(request, 'Successfully registered!')
        user = User.objects.filter(username = request.POST['username'])
        request.session['userid'] = user[0].id
    return redirect('/success')

def login(request):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    user = User.objects.login(request.POST)
    if 'error' in user:
        error = user['error']
        for msg in error:
            messages.error(request, msg)
        return redirect('/')
    else:
        messages.success(request, "Successfully logged in!")
        user = User.objects.filter(username = request.POST['username'])
        request.session['userid'] = user[0].id
    return redirect('/success')
    #Trip.objects.validate(request.POST, User.objects.get(id=request.session['id']))


def success(request):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    context= {
    'user': User.objects.all(),
    'loggeduser': User.objects.get(id=request.session['userid']),
    'trips': Trip.objects.filter(creator=request.session['userid']),
    'othertrips': Trip.objects.all()
    }
    return render(request, 'practice/success.html', context)

def logout(request):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    del request.session['userid']
    return redirect('/')
def addtravel(request):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    return render(request, 'practice/addtravel.html')

def addtrip(request):
    # date = request.POST['start']
    # string = date[4]+date[5]+date[6]+date[7]+"-"+date[2]+date[3]+
    # YYYY-MM-DD <= proper format
    # mmddyyyy <= user input

    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    trip = Trip.objects.validate(request.POST, User.objects.get(id=request.session['userid']))
    if 'errors' in trip:
        error = trip['errors']
        for msg in error:
             messages.error(request, msg)
        return redirect('/addtravel')
    else:
        messages.success(request, 'Successfully added trip!')
    return redirect('/success')
def destination(request, id):
    if 'userid' not in request.session:
        messages.error(request, 'Nice try, log in or register.')
        return  redirect('/')
    trip = Trip.objects.get(id=id)
    context = {
    'trip': trip
    }
    return render(request, 'practice/destination.html', context)
def jointrip(request, tripid):
    if request.method == "GET":
        messages.error(request, 'Nice try, log in or register.')
        return redirect('/')
    trip = Trip.objects.jointrip(tripid, request.session['userid'])
    if 'error' in trip:
        messages.error(request, "You joined this already")
        return redirect('/success')
    else:
        return redirect('/success')
