class Car(object):
    def __init__(self, price, speed, fuel, mileage):
        print "made a car"
        self.price = price
        self.speed = speed
        self.fuel = fuel
        self.mileage = mileage
        if price > 10000:
            self.tax = .15
        else:
            self.tax = .12
        self.display_all()
    def display_all(self):
        print "price of this car was...: " +str(self.price)+"$"
        print "this car goes up to...: " +str(self.speed)+" mph"
        print "this car starts with a...: "+str(self.fuel)+" tank"
        print "this car has...: "+str(self.mileage)+" miles per gallon"
        print "the tax on this car was...: "+str(self.tax)+"%"
car1 = Car(2000,100,"full",25)
car2 = Car(10001,200,"half tank",11)
car3 = Car(5000,80,"empty",30)
car4 = Car(200000,280,"full",8)
car5 = Car(1000,50,"empty",20)
car6 = Car(8000,90,"full",35)
