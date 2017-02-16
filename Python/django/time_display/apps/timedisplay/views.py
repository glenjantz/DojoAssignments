from django.shortcuts import render, HttpResponse
from datetime import datetime
# Create your views here.
def index(request):
    context={
    "curtime": datetime.strftime(datetime.now(), ("%m: %d: %y")),
    "curdate": datetime.strftime(datetime.now(), ("%I:%M:%S: %p"))
    }
    hello = "hello"
    return render(request, 'timedisplay/index.html',context)
