from django.shortcuts import render, redirect, HttpResponse

def index(request):
    response = "placeholder to later display all the list of blogs"
    return HttpResponse(response)

def new(request):
    response = "placeholder to display a new form to create a new blog"
    return HttpResponse(response)

def create(request):
    return redirect('/blogs')
def show(request, number):
    return HttpResponse("placeholder to display blog" + number)
def edit(request, number):
    return HttpResponse("placeholder to edit blog" + number)
def destroy(request, number):
    return redirect('/blogs')
    
# Create your views here.