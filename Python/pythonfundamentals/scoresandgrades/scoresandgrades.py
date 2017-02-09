import random

def randnum():
    rando = random.randrange(60,100)
    #print rando
    return rando
randnum()
def randomgrade():
    print "Scores and Grades"
    for i in range(0,10):
        score = randnum()
        if score >=90:
            print "Score:", str(score), "Your grade is A"
        elif score >=80:
            print "Score:", str(score), "Your grade is B"
        elif score >=70:
            print "Score:", str(score), "Your grade is C"
        elif score >=60:
            print "Score:", str(score), "Your grade is D"
    print "End of the program BYE!"
randomgrade()
