from __future__ import unicode_literals
from django.db import models
import re, bcrypt, datetime
Name_Regex = re.compile(r'^[A-Za-z]+$')

class UserManager(models.Manager):
    def register(self, data):
        status = True
        errorlist = []
        if not Name_Regex.match(data['name']):
            status = False
            errorlist.append("Name must only contain letters")
        elif len(data['name']) < 2:
            status = False
            errorlist.append("Name must be greater than 2 characters ")
        if len(data['username']) < 2:
            status = False
            errorlist.append("Username must be greater than 2 characters")
        if len(data['password']) < 8:
            status = False
            errorlist.append("Password must be greater than 8 characters")
        if data['password'] != data['pwc']:
            status = False
            errorlist.append("Passwords must match")
        if status == False:
            return {'error': errorlist}
        if status == True:
            password = data['password']
            hashed = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
            User.objects.create(name=data['name'],username=data['username'],password=hashed)
            return {}

    def login(self, data):
        status = True
        errorlist = []
        user = User.objects.filter(username=data['username'])
        if len(data['username']) <2:
            status = False
            errorlist.append('username has to contain more than 2 characters')
        if len(user)<1:
            status = False
            errorlist.append('Username does not exist, please register')
        if status == False:
            return {'error': errorlist}
        else:
            if bcrypt.hashpw(data['password'].encode(), user[0].password.encode()) == user[0].password:
                return {}
            else:
                errorlist.append('password does not match records')
                return {'error': errorlist}


class User(models.Model):
    name = models.CharField(max_length=255)
    username = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now=True)
    objects = UserManager()


class TripManager(models.Manager):
    def validate(self, data, user):
        status = True
        errorlist = []
        if len(data['destination']) < 1:
            errorlist.append('Location must be filled in.')
            status = False
        if len(data['description']) < 1:
            errorlist.append('Description must be filled in.')
            status = False
        if len(data['start']) <1:
            errorlist.append('start date cant be blank')
            status = False
        if len(data['end']) <1:
            errorlist.append('end date cant be blank')
            status = False
        elif data['start'] < str(datetime.datetime.today()).split()[0]:
            errorlist.append("startdate must be start in the future")
            status = False
        if data['end'] < data['start']:
            errorlist.append('end date must be after start date')
            status = False
        if status == False:
            return {'errors': errorlist}
        else:
            Trip.objects.create(destination=data['destination'],description=data['description'],datefrom=data['start'],dateto=data['end'],creator=user)
            return {}
    def jointrip(self, tripid, userid):
        if len(Trip.objects.filter(id=tripid).filter(join__id=userid)) > 0:
            return {'error': "You joined this already"}
        else:
            this_trip = Trip.objects.get(id = tripid)
            this_user = User.objects.get(id= userid)
            this_trip.join.add(this_user)
            #Trip.objects.get(id=tripid).join.add(Trip.objects.get(id=userid))
        return {}



class Trip(models.Model):
    destination = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    creator = models.ForeignKey(User)
    datefrom = models.DateField()
    dateto = models.DateField()
    join = models.ManyToManyField(User, related_name = "userjoin")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    objects = TripManager()
