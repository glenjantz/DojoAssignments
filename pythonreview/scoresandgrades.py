# Assignment: Scores and Grades
# Write a function that generates ten scores between 60 and 100. Each time a score is generated, your function should display what the grade is for a particular score.
#  Here is the grade table:
# Score: 60 - 69; Grade - D
# Score: 70 - 79; Grade - C
# Score: 80 - 89; Grade - B
# Score: 90 - 100; Grade - A
# The result should be like this:
# Scores and Grades
# Score: 87; Your grade is B
# Score: 67; Your grade is D
# Score: 95; Your grade is A
# Score: 100; Your grade is A
# Score: 75; Your grade is C
# Score: 90; Your grade is A
# Score: 89; Your grade is B
# Score: 72; Your grade is C
# Score: 60; Your grade is D
# Score: 98; Your grade is A
# End of the program. Bye!
import random
def scoresandgrades():
    for x in range(0,11):
        randonum = random.randint(60,100)
        if randonum >= 90:
            print "Score:", randonum, "Your grade is A"
        if randonum >= 80 and randonum <= 89:
            print "Score:", randonum, "Your grade is B"
        if randonum >= 70 and randonum <= 79:
            print "Score:", randonum, "Your grade is C"
        if randonum <= 69:
            print "Score:", randonum, "Your grade is D"

scoresandgrades()
