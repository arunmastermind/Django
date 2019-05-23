from django.shortcuts import render
from .forms import SignUpForm, ProfileForm
from .models import Manager
from django.shortcuts import get_object_or_404
# Create your views here.

def index (request):
	return render (request, 'blog/main.html')
	
def signup (request):
	form = SignUpForm(request.POST or None)
	contents = SignUpForm(request.POST or None)

	if form.is_valid():
		instance = form.save(commit=False)	#to save the data in db
		#instance will contain the values comming after POST(submit)
		#we can have "instance.save()" directly but "instance = form.save(commit=False)" let us not to save the date directly and we can perform some more validations or anything on the incomming data before getting saved.
		instance.save()
	
	return render (request, 'blog/signup.html', {'form': form, 'con' : contents})

	

def profile (request):
	items = Manager.objects.filter()
	form = ProfileForm(request.POST or None)

	if form.is_valid():
		selected_item = get_object_or_404(Manager, pk=request.POST.get('item_id'))

		instance = form.save(commit=False)	#to save the data in db
		#instance will contain the values comming after POST(submit)
		#we can have "instance.save()" directly but "instance = form.save(commit=False)" let us not to save the date directly and we can perform some more validations or anything on the incomming data before getting saved.
		instance.manager = selected_item
		instance.save()

	return render(request, 'blog/profile.html', {'form': form, 'items': items})
