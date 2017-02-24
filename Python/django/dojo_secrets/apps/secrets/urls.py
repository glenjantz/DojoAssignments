from django.conf.urls import url
from . import views
urlpatterns = [
    url(r'^$', views.index),
    url(r'^register$', views.register),
    url(r'^secrets$', views.secrets),
    url(r'^login$', views.login),
    url(r'^logout$', views.logout),
    url(r'^delete/(?P<id>\d+)$', views.delete),
    url(r'^postsecret$', views.postsecret),
    url(r'^likesecret/(?P<word>\w+)/(?P<secretid>\d+)$', views.likesecret),
    url(r'^deletesecret/(?P<word>\w+)/(?P<id>\d+)$', views.deletesecret),
    url(r'^mostpopularsecrets$', views.mostpopularsecrets),
    url(r'^.+$', views.any)
]
