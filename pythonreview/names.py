# Write the following function.
# Part I
# Given the following list:
# students = [
#      {'first_name':  'Michael', 'last_name' : 'Jordan'},
#      {'first_name' : 'John', 'last_name' : 'Rosales'},
#      {'first_name' : 'Mark', 'last_name' : 'Guillen'},
#      {'first_name' : 'KB', 'last_name' : 'Tonel'}
# ]
# Create a program that outputs:
# Michael Jordan
# John Rosales
# Mark Guillen
# KB Tonel
def names():
    students = [
         {'first_name':  'Michael', 'last_name' : 'Jordan'},
         {'first_name' : 'John', 'last_name' : 'Rosales'},
         {'first_name' : 'Mark', 'last_name' : 'Guillen'},
         {'first_name' : 'KB', 'last_name' : 'Tonel'}
    ]
    for items in range(0,len(students)):
        print items
        print students[items]["first_name"], students[items]["last_name"]
# names()

# Now, given the following dictionary:
# users = {
#  'Students': [
#      {'first_name':  'Michael', 'last_name' : 'Jordan'},
#      {'first_name' : 'John', 'last_name' : 'Rosales'},
#      {'first_name' : 'Mark', 'last_name' : 'Guillen'},
#      {'first_name' : 'KB', 'last_name' : 'Tonel'}
#   ],
#  'Instructors': [
#      {'first_name' : 'Michael', 'last_name' : 'Choi'},
#      {'first_name' : 'Martin', 'last_name' : 'Puryear'}
#   ]
#  }
# Create a program that prints the following format (including number of characters in each combined name):
# Students
# 1 - MICHAEL JORDAN - 13
# 2 - JOHN ROSALES - 11
# 3 - MARK GUILLEN - 11
# 4 - KB TONEL - 7
# Instructors
# 1 - MICHAEL CHOI - 11
# 2 - MARTIN PURYEAR - 13

def names2():
    users = {
     'Students': [
         {'first_name':  'Michael', 'last_name' : 'Jordan'},
         {'first_name' : 'John', 'last_name' : 'Rosales'},
         {'first_name' : 'Mark', 'last_name' : 'Guillen'},
         {'first_name' : 'KB', 'last_name' : 'Tonel'}
      ],
     'Instructors': [
         {'first_name' : 'Michael', 'last_name' : 'Choi'},
         {'first_name' : 'Martin', 'last_name' : 'Puryear'}
      ]
     }
    print "students"
    for count in range(0,len(users["Students"])):
        print str(count +1) +" " + "-" + users["Students"][count]["first_name"] + " " + users["Students"][count]["last_name"] \
        + " " + "-" +" " + str(len(users["Students"][count]["first_name"]) + len(users["Students"][count]["last_name"]))
    print "instructors"
    for count in range(0,len(users["Instructors"])):
        print str(count + 1) + " " + "-" + " " + users["Instructors"][count]["first_name"] + " " + users["Instructors"][count]["last_name"] \
        + " " + "-" + " " + str(len(users["Instructors"][count]["first_name"]) + len(users["Instructors"][count]["last_name"]))
names2()
