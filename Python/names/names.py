students = [
     {'first_name':  'Michael', 'last_name' : 'Jordan'},
     {'first_name' : 'John', 'last_name' : 'Rosales'},
     {'first_name' : 'Mark', 'last_name' : 'Guillen'},
     {'first_name' : 'KB', 'last_name' : 'Tonel'}
]

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
def names():
    for i in range(0,len(students)):
        print students[i]["first_name"], "", students[i]["last_name"]
    return
names()

def names2():
    print "students"
    for count in range(0, len(users["Students"])):
        print str(count + 1) + " - " + users["Students"][count]["first_name"] \
        + " " + users["Students"][count]["last_name"] + " - " + \
        str(len(users["Students"][count]["first_name"]) + len(users["Students"][count]["last_name"]))

    print "Instructors"
    for count in range(0, len(users["Instructors"])):
        print str(count + 1) + " - " + users["Instructors"][count]["first_name"] \
        + " " + users["Instructors"][count]["last_name"] + " - " + \
        str(len(users["Instructors"][count]["first_name"]) + len(users["Instructors"][count]["last_name"]))
names2()
