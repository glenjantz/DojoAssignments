#basic hash usage
# x = {"first_name" => "Coding", "last_name" => "Dojo"}
# puts x["first_name"], x["last_name"]
# puts "your last name is Dojo" if x["last_name"].eql? "Dojo"

#hash with symbols use : to start a symbols
# y = {:first_name => "Coding", :last_name => "Dojo"}
# puts "y is ", y
# puts y[:first_name],y[:last_name]
#
# puts "deleting :first_name"
# y.delete(:first_name)
# puts "this is y", y
#
# if y.has_key? :first_name
#   puts "y has a key called :first_name"
# else
#   puts "y does not have a key called :first_name"
# end
#
# if y.has_value? "Dojo"
#   puts "y has a value 'Dojo'"
# else
#   puts "y does not have a value 'Dojo'"
# end

# def new_user user = {first_name: "first", last_name: "last"}  #ex of passing an object to a function as a parameter
#   puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
# end
our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user # => "Welcome to our site, first last!"
# new_user our_user # => "Welcome to our site, Oscar Vasquez!"

# def new_user first_name: "first", last_name: "last"  #different syntax
#   puts "Welcome to our site, #{first_name} #{last_name}!"
# end
# new_user our_user

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
new_user                  # => Welcome, first last
new_user "Hello", our_user # => Hello, Oscar Vazquez
