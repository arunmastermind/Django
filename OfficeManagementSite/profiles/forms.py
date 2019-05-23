from django import forms

from .models import Profile

class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['first_name', 'last_name', 'email']

    # validations
    def clean_email(self):
        email = self.cleaned_data.get('email')
        email_base, provider = email.split("@")
        domain, extention = provider.split('.')
        if not extention == "net":
            raise forms.ValidationError("Are bhaiya .NET wali email id daalo")
        return email
