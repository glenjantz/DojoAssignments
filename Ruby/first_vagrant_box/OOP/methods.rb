# Instance Methods
# Instance methods are just regular methods that are defined inside the Class definition. Let's look at an example:
class MyClass
  def some_method
    puts "This is an instance method"
  end
end
something = MyClass.new
something.some_method  # => "This is an instance method"

class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end
  def say_hello
    puts "Hello!"
  end
  def self.foo         #####THIS IS A CLASS METHOD          not available to instances
  puts "This is a class method"
end
end
u = User.new("John", "Doe")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"
User.foo
