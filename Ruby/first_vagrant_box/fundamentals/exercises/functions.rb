def hello_world     #define the function
  puts "hello world"
end #end the function
hello_world  #call the function


def say_hello name1, name2   #parenthesis are optional for parameters
  puts "hello, #{name1} and #{name2}"
end
say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"


def say_hello(name1, name2)
  puts "hello, #{name1} and #{name2}"
end
say_hello("oscar", "eduardo") # => "hello, oscar and eduardo"


def say_hello name1="oscar", name2="shane"  #default parameters
  puts "hello, #{name1} and #{name2}"
end
say_hello   # => "hello, oscar and shane"


def say_hello name1="oscar", name2="shane"
  "hello, #{name1} and #{name2}"
end
puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"


def say_hello name1, name2
  if name1.empty? or name2.empty?   #ruby returns whatever was last evaluated if no return remember puts = nil
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello "",""
