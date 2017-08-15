# Write a program that prints a 'checkerboard' pattern to the console.
# Your program should require no input and produce console output that looks like so:
# * * * *
#  * * * *
# * * * *
#  * * * *
# * * * *
#  * * * *
# * * * *
#  * * * *
# Each star or space represents a square. On a traditional checkerboard you'll see alternating squares of red or black.
#  In our case we will alternate stars and spaces. The goal is to repeat a process several times. This should make you think of looping.
def checkerboard():

    pattern1 = "* * * *"
    pattern2 = " * * * *"
    count = 0
    for x in range(0,8):
        if count % 2 == 0:
            count += 1
            print pattern1
        else:
            count += 1
            print pattern2
checkerboard()
