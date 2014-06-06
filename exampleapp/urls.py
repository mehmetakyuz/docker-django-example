from django.conf.urls import patterns, url

from exampleapp.views import EnvironmentView


from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', EnvironmentView.as_view()),
)
