from django.shortcuts import render, redirect, HttpResponse
from .models import Course
def index(request):
    context = {'courses': Course.objects.all()}
    return render(request, 'courses/index.html', context)

def process(request):
    Course.objects.create(name=request.POST['name'], description=request.POST['desc'])
    return redirect('/')

def delete(request, id):
    context = {'courses': Course.objects.filter(id=id)}
    return render(request, 'courses/delete.html', context)

def actuallydelete(request, id):
    Course.objects.filter(id=id).delete()
    return redirect('/')
