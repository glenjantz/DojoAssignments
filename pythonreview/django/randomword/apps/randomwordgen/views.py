from django.shortcuts import render, redirect
from django.utils.crypto import get_random_string


def index(request):
    if "count" not in request.session:
        request.session["count"] = 0
    if "string" not in request.session:
        request.session["string"] = ""
    return render(request, 'randomwordgen/index.html')
# Create your views here.

def increment(request):
    request.session["count"] += 1
    request.session['string'] = get_random_string(length=14)
    return render(request, 'randomwordgen/index.html')

def reset(request):
    request.session['count'] = 0
    request.session['string'] = ""
    return redirect("/")
