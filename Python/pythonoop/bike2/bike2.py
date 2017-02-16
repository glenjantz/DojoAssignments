class Bike(object):
    def __init__(self, price, max_speed):
        self.price = price
        self.max_speed = max_speed
        self.miles = 0
        print "made a bike"
    def displayinfo(self):
        print "miles are: " +str(self.miles)+" miles"
        print "price was: " +str(self.price)+" $"
        print "max speed is: " +str(self.max_speed)+" mph"
        return self
    def ride(self):
        self.miles = self.miles + 10
        print "riding...miles are: " +str(self.miles)+" miles"
        return self
    def reverse(self):
        if self.miles >= 5:
            self.miles = self.miles - 5
        print "reversing...miles are: " +str(self.miles)+" miles"
        return self
bike1 = Bike(200, 25)
bike1.ride().ride().ride().reverse().displayinfo().ride().ride().ride()
#bike1.ride()
# bike1.ride()
# bike1.ride()
# bike1.reverse()
# bike1.displayinfo()
#
# bike2 = Bike(100, 50)
# bike2.ride()
# bike2.ride()
# bike2.reverse()
# bike2.reverse()
# bike2.displayinfo()
#
# bike3 = Bike(50,10)
# bike3.reverse()
# bike3.reverse()
# bike3.reverse()
# bike3.displayinfo()
