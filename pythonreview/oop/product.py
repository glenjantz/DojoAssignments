# The owner of a store wants a program to track products. Create a product class to fill the following requirements.
# Product Class:
# Attributes:
#  Price
# Item Name
#  Weight
#  Brand
#  Cost
#  Status: default "for sale"
# Methods:
#  Sell: changes status to "sold"
#  Add tax: takes tax as a decimal amount as a parameter and returns the price of the item including sales tax
#  Return: takes reason for return as a parameter and changes status accordingly. If the item is being returned because it is defective
# change status to defective and change price to 0. If it is being returned in the box, like new mark it as for sale.
# If the box has been opened set status to used and apply a 20% discount.
#  Display Info: show all product details.
# Every method that doesn't have to return something should return self so methods can be chained.
class Product(object):
    def __init__(self,price,name,weight,brand,cost):
        self.price = price
        self.name = name
        self.weight = weight
        self.brand = brand
        self.cost = cost
        self.status = "for sale"
    def sell(self):
        self.status = "sold"
        return self
    def addtax(self):
        print "the price of this item with tax is " + str(self.price * 1.06)
        return self
    def returnitem(self,reason):
        if reason == "defective":
            self.status = "defective"
            self.price = 0
        elif reason == "inbox":
            self.status = "for sale"
        elif reason =="opened":
            self.status = "used"
            deduction = self.price * 0.2
            self.price = self.price - deduction
        return self
    def displayinfo(self):
        print "the name of this product is " + self.name
        print "the price of this product is " + str(self.price)
        print "the weight of this product is " + self.weight
        print "the brand of this product is " + self.brand
        print "the cost of this product is " + str(self.cost)
        print "the status of this product is " + self.status
        return self

cheese = Product(1.00,"american cheese","8oz","kraft",.50)
cheese.displayinfo().addtax().sell().displayinfo().returnitem("defective").displayinfo()
