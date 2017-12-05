class User  #names the class
  @firstname          #firstname variable
  def first_name=(name)    #method to set the first name variable
    @firstname = name
  end
  def first_name    #method to retrieve the first name variable
    @firstname       #ruby returns whatever was read last
  end
  # @lastname      this line is not needed when using attr
  attr_reader :lastname   #creates a getter method
  attr_writer :lastname   #creates a setter method
  attr_accessor :middlename  #creates a getter and setter method
end
u = User.new
u.first_name = "Glen"
u.lastname = "Jantz"
u.middlename = "kyle"
puts u
puts u.inspect      #method to "inspect" the instance
puts u.first_name
puts u.lastname
puts u.middlename

class User2
  attr_accessor :firstname, :lastname
  def initialize(fname,lname)   #example of using initalizing variables
    @firstname = fname
    @lastname = lname
  end
end

user = User2.new("glen","jantz")
puts user
puts user.firstname, user.lastname
