from django.shortcuts import render, redirect

def index(request):
    return render(request, 'surveyforms/index.html')
def result(request):
    return render(request, 'surveyforms/result.html')
def process(request):
    request.session['name'] = request.POST['name']
    request.session['comment'] = request.POST['comment']
    request.session['favlang'] = request.POST['favlang']
    request.session['location'] = request.POST['location']
    return redirect('/result')
# Create your views here.
