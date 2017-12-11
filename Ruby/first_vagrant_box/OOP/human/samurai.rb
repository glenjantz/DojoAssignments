require_relative "Human"
class Samurai < Human
  @@how_manys = 0
 def initialize
   super
   @health = 200
   @@how_manys += 1
 end
 # def how_many
 #   puts "There are #{@@how_manys} Samurai"
 #   self
 # end
 def self.how_manys
   @@how_manys
 end
 def death_blow obj
   if obj.class.ancestors.include?(Human)
     obj.health = 0
     true
   else
     false
   end
 end
 def meditate
   @health = 200
   self
 end
end

s = Samurai.new
h = Human.new
puts s.health
puts h.health
s.death_blow h
puts h.health
h.attack s
puts s.health
s.meditate
puts s.health
s.how_manys
s2 = Samurai.new
s.how_manys
