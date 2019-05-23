from django.shortcuts import render
from .forms import ProfileForm
from .models import Manager
from django.shortcuts import get_object_or_404

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

	return render(request, 'profiles/profile.html', {'form': form, 'items': items})