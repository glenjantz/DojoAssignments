require_relative "Human"
class Wizard < Human
  def initialize
    @health = 50
    @int = 25
  end
  def heal
    @health += 10
    self
  end
  def fireball obj
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end
end
w = Wizard.new
w2 = Wizard.new
puts w.health, w2.health
w.fireball w2
puts w2.health
