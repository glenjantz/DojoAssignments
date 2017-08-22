from django.shortcuts import render, redirect
import random
from datetime import datetime

def index(request):
    if "gold" not in request.session:
        request.session["gold"] = 0
    if "result" not in request.session:
        request.session["result"] = ""
    return render(request, 'ninjagolds/index.html')

def process(request):
    if request.POST['building'] == "farm":
        addgold = random.randrange(10,20)
        request.session['gold'] += addgold
        request.session['result'] += "earned " + str(addgold) + " from the farm" + "("+str(datetime.now())+")" + "\n"
    if request.POST['building'] == "cave":
        addgold = random.randrange(5,10)
        request.session['gold'] += addgold
        request.session['result'] += "earned " + str(addgold) + " from the cave" + "("+str(datetime.now())+")" + "\n"
    if request.POST['building'] == "house":
        addgold = random.randrange(2,5)
        request.session['gold'] += addgold
        request.session['result'] += "earned " + str(addgold) + " from the house" + "("+str(datetime.now())+")" + "\n"
    if request.POST['building'] == "casino":
        addgold = random.randrange(-50,50)
        request.session['gold'] += addgold
        if addgold < 0:
            request.session['result'] += "lost " + str(addgold) + " from the casino" + "("+str(datetime.now())+")" + "\n"
        else:
            request.session['result'] += "earned " + str(addgold) + " from the casino" + "("+str(datetime.now())+")" + "\n"
    return redirect('/')
# Create your views here.
