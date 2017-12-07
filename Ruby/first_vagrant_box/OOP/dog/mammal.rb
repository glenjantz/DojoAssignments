class Mammal
  def initialize
    @health = 150
    self
  end
  def display_health
    puts "the mammals health is #{@health}"
    self
  end
end
# h = Mammal.new
# puts h.display_health
