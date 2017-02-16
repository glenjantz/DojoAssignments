from django.shortcuts import render, redirect
import random
import string
# Create your views here.
def index(request):
    if "key" not in request.session:
        request.session["key"] = 0
    if "string1" not in request.session:
        request.session["string1"] = ""
    return render(request, 'randomword/index.html')

def increment(request):
    request.session['key'] += 1
    arr = []
    for num in range(1,15):
        arr.append(random.choice(string.ascii_uppercase+string.digits))
        request.session["string1"]= "".join(arr)
    return redirect('/')
