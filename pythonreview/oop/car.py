# Create a class called  Car. In the__init__(), allow the user to specify the following attributes: price, speed, fuel, mileage.
# If the price is greater than 10,000, set the tax to be 15%. Otherwise, set the tax to be 12%.
# Create six different instances of the class Car. In the class have a method called display_all() that returns all the information about the car as a string.
#  In your __init__(), call this display_all() method to display information about the car once the attributes have been defined.
class Car(object):
    def __init__(self,price,speed,fuel,mileage):
        self.price = price
        self.speed = speed
        self.fuel = fuel
        self.mileage = mileage
        if self.price > 10000:
            self.tax = 0.15
        else:
            self.tax = 0.12
        self.display_all()
    def display_all(self):
        print "This cars price is " + str(self.price) + " and this cars max speed is " + self.speed + " and this cars tank starts " + self.fuel \
        + " and this cars gas mileage is " + self.mileage + " and this cars tax was " + str(self.tax) + " %"


car1 = Car(1000,"55mph","empty","15mpg")
car2 = Car(2000,"60mph","empty","20mpg")
car3 = Car(4000,"70mph","half","25mpg")
car4 = Car(8000,"100mph","half","25mpg")
car5 = Car(10000,"90mph","full","50mpg")
car6 = Car(16000,"100ph","full","60mpg")
