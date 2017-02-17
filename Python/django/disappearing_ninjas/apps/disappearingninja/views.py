from django.shortcuts import render, redirect, HttpResponse

# Create your views here.
def index(request):
    return render(request, 'disappearingninja/index.html')

def ninja(request):
    context = {'color': 'disappearingninja/images/tmnt.png'}
    return render(request, 'disappearingninja/index2.html', context)

def ninjacolors(request, color):
    if color == "blue":
        context ={'color': 'disappearingninja/images/leonardo.jpg'}
    elif color == "red":
        context ={'color': 'disappearingninja/images/raphael.jpg'}
    elif color == "purple":
        context ={'color': 'disappearingninja/images/donatello.jpg'}
    elif color == "orange":
        context ={'color': 'disappearingninja/images/michelangelo.jpg'}
    else:
        context ={'color': 'disappearingninja/images/notapril.jpg'}
    return render(request, 'disappearingninja/index2.html', context)
