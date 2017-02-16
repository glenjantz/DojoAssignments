class Animal(object):
    def __init__(self, name):
        self.name = name
        self.health = 100
    def walk(self):
        self.health = self.health - 1
        return self
    def run(self):
        self.health = self.health - 5
        return self
    def displayhealth(self):
        print str(self.name)+" "+ str(self.health)+" health"
        return self
animal = Animal("sneaky")
animal.walk().walk().walk().run().run().displayhealth()

class Dog(Animal):
    def __init__(self,name):
        self.health = 150
        self.name = name
        super(Dog, self).__init__(self.name)
    def pet(self):
        self.health = self.health + 5
        return self
doggy = Dog("hungwy")
doggy.walk().walk().walk().run().run().pet().displayhealth()

class Dragon(Animal):
    def __init__(self,name):
        self.health = 170
        self.name = name
        super(Dragon, self).__init__(self.name)
    def fly(self):
        self.health = self.health - 10
        return self
    def displayhealth(self):
        print "im a dragon"
        super(Dragon, self).displayhealth()
        return self
draggy = Dragon("bigmama")
draggy.walk().walk().walk().run().run().fly().fly().displayhealth()
