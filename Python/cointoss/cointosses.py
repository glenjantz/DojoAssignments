import random
def randnum():
    rando = random.randrange(0,100)
    return rando

def flipper():
    head = 0
    tail = 0
    for i in range(1,5001):
        flip = randnum()
        if flip > 50:
            head = head + 1
            print "attempt #", str(i), "throwing a coin...It's a head!...Got", str(head), "head(s) so far and", str(tail), "tail(s) so far"
        if flip < 50:
            tail = tail + 1
            print "attempt #", str(i), "throwing a coin...It's a tail!...Got", str(tail), "head(s) so far and", str(head), "tail(s) so far"
    print "End of the program BYE!"
flipper()
