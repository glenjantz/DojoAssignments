from django.shortcuts import render
from datetime import datetime

def index(request):
    context={
    "curtime": datetime.strftime(datetime.now(), ("%I:%M:%S: %p")),
    "curdate": datetime.strftime(datetime.now(), '%b %d, %Y')
    }
    return render(request, 'timedisplayed/index.html',context)
# Create your views here.
