from django.shortcuts import render, redirect, HttpResponse
import random
from datetime import datetime

# Create your views here.
def index(request):
    if "gold" not in request.session:
        request.session["gold"] = 0
    if "result" not in request.session:
        request.session["result"] = ""
    return render(request, 'ninjagold/index.html')

def process(request):
    if request.POST["building"] == "farm":
        addgold = random.randrange(10,20)
        request.session["gold"] += addgold
        request.session["result"] += "Earned "+ str(addgold)+ " gold from the farm! " + "("+str(datetime.now())+")" + "\n"
    if request.POST["building"] == "cave":
        addgold = random.randrange(5,10)
        request.session["gold"] += addgold
        request.session["result"] += "Earned "+ str(addgold)+ " gold from the cave! " + "("+str(datetime.now())+")" + "\n"
    if request.POST["building"] == "house":
        addgold = random.randrange(2,5)
        request.session["gold"] += addgold
        request.session["result"] += "Earned "+ str(addgold)+ " gold from the house! " + "("+str(datetime.now())+")" + "\n"
    if request.POST["building"] == "casino":
        if request.session["gold"] > 50:
            addgold = random.randrange(-50,50)
            request.session["gold"] += addgold
            request.session["result"] += "Earned "+ str(addgold)+ " gold from the casino! " + "("+str(datetime.now())+")" + "\n"
            request.session["no"] = "make it rain"
        else:
            request.session["no"] = "You dont have enough gold to gamble"

    return redirect("/")
