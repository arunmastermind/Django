from django.shortcuts import render
from .forms import LmsForm
from .models import Lms

def lms (request):
	form = LmsForm(request.POST or None)

	if form.is_valid():

		instance = form.save(commit=False)	#to save the data in db
		#instance will contain the values comming after POST(submit)
		#we can have "instance.save()" directly but "instance = form.save(commit=False)" let us not to save the date directly and we can perform some more validations or anything on the incomming data before getting saved.
		instance.save()

	return render(request, 'lms/lms.html', {'form': form})