from django.shortcuts import render, redirect, HttpResponse
from .models import User
from django.contrib import messages
# import re
# Email_Regex = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
# Create your views here.
def index(request):
    return render(request, 'emailv/index.html')

def process(request):
    user = User.emailManager.register(request.POST['email'])
    if 'errors' in user:
        messages.error(request, 'Email is invalid.')
        return redirect('/')
    if 'email' in user:
        User.emailManager.create(email = user['email'])
        messages.success(request, 'The email address you entered (' + user['email'] + ') is a VALID email address! Thank you!')
    return redirect('/success')

def success(request):
    context = {'emails': User.emailManager.all()}
    return render(request, 'emailv/success.html', context)

def delete(request, id):
    User.emailManager.filter(id=id).delete()
    return redirect('/success')
