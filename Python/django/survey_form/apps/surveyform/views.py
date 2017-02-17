from django.shortcuts import render, redirect, HttpResponse

# Create your views here.
def index(request):
    return render(request, 'surveyform/index.html')

def result(request):
    return render(request, 'surveyform/result.html')

def process(request):
    print "sent the form"
    if 'counter' not in request.session:
        request.session['counter'] = 0

    request.session["name"] = request.POST['name']
    request.session["loc"] = request.POST['location']
    request.session["lang"] = request.POST['favlang']
    request.session["com"] = request.POST['comments']
    request.session['counter'] += 1
    return redirect('/result')
