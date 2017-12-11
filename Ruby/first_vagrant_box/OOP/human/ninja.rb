require_relative "Human"
class Ninja < Human
  def initialize
    @stealth = 175
    super
    # @health
  end
  def steal obj
    if obj.class.ancestors.include?(Human)
      attack(obj)
      @health += 10
    else
      false
    end
  end
  def get_away
    @health -= 15
    self
  end
end
n = Ninja.new
h = Human.new
puts n.health
n.steal(h)
puts n.health
n.get_away
puts n.health
