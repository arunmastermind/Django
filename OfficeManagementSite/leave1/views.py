from django.shortcuts import render

def index(request):
    return render(request, 'leave1/home.html')

def contact(request):
    return render(request, 'leave1/contact.html')

def about(request):
    return render(request, 'leave1/about.html')

def services(request):
    return render(request, 'leave1/services.html')