from django import forms

from .models import SignUp, Profile

class SignUpForm(forms.ModelForm):
	class Meta:
		model = SignUp
		fields = ['first_name', 'last_name', 'email']
		#exclude = ['last_name']
		
	#validations
	def clean_email(self):
		email = self.cleaned_data.get('email')
		email_base, provider = email.split("@")
		domain, extention = provider.split('.')
		if not extention == "edu":
			raise forms.ValidationError("Are bhaiya .EDU wali email id daalo")
		return email


class ProfileForm(forms.ModelForm):
	class Meta:
		model = Profile
		fields = ['first_name', 'last_name', 'email']
	#validations
	def clean_email(self):
		email = self.cleaned_data.get('email')
		email_base, provider = email.split("@")
		domain, extention = provider.split('.')
		if not extention == "edu":
			raise forms.ValidationError("Are bhaiya .EDU wali email id daalo")
		return email
