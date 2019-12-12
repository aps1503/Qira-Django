from django.shortcuts import render

# Create your views here.
def index(request):
    return HttpResponse("Congrats! You are now viewing QIRA 0.0.-1", content_type='text/plain')