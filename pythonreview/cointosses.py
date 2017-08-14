# Write a function that simulates tossing a coin 5,000 times. Your function should print how many times the head/tail appears.
# Sample output should be like the following:
# Starting the program...
# Attempt #1: Throwing a coin... It's a head! ... Got 1 head(s) so far and 0 tail(s) so far
# Attempt #2: Throwing a coin... It's a head! ... Got 2 head(s) so far and 0 tail(s) so far
# Attempt #3: Throwing a coin... It's a tail! ... Got 2 head(s) so far and 1 tail(s) so far
# Attempt #4: Throwing a coin... It's a head! ... Got 3 head(s) so far and 1 tail(s) so far
# ...
# Attempt #5000: Throwing a coin... It's a head! ... Got 2412 head(s) so far and 2588 tail(s) so far
# Ending the program, thank you!
import random

def cointoss():
    print "Starting the program..."
    headcount = 0
    tailscount = 0
    attempt = 0
    for x in range(0,5001):
        attempt += 1
        rando = random.randint(0,1)
        if rando == 1:
            headcount += 1
            print "Attempt #",attempt,"Throwing a coin... It's a head! ... Got",headcount, "head(s) so far and",tailscount,"tail(s) so far"
        else:
            tailscount += 1
            print "Attempt #",attempt,"Throwing a coin... It's a tail! ... Got",headcount, "head(s) so far and",tailscount,"tail(s) so far"

cointoss()
