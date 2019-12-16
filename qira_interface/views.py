from django.shortcuts import render
import os

# Create your views here.
def index(request):
    context = {
        'qv': os.getenv('QIRA-VERSION'),
    }
    return render(request,'qira_interface/index.html',context)