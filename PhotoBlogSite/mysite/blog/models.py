from __future__ import unicode_literals

from django.db import models

# Create your models here.

class SignUp(models.Model):
	first_name = models.CharField(max_length=120, blank=False, null=False)
	last_name = models.CharField(max_length=120, default='', blank=True, null=True)
	email = models.EmailField(blank=False, null=False)
	timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)
	update = models.DateTimeField(auto_now_add=False, auto_now=True)
	
	def __unicode__(self): 
		return self.first_name


class Profile(models.Model):
	first_name = models.CharField(max_length=120, blank=False, null=False)
	last_name = models.CharField(max_length=120, default='', blank=True, null=True)
	email = models.EmailField(blank=False, null=False)
	manager = models.CharField(max_length=120, blank=True, null=True)
	timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)
	update = models.DateTimeField(auto_now_add=False, auto_now=True)

	def __unicode__(self):
		return self.first_name

class Manager(models.Model):
	manager = models.CharField(max_length=120, blank=False, null=False)

	def __unicode__(self):
		return self.manager
