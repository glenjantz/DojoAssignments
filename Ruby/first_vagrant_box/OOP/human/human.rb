class Human
  attr_accessor :str, :int, :stealth, :health
  def initialize
    @str = 3
    @int = 3
    @stealth = 3
    @health = 100
  end
  def attack obj
    if obj.class.ancestors.include?(Human)
      obj.health -= 1
      true
    else
      false
    end
  end
end
# a = Human.new
# b = Human.new
# puts a.health, b.health
# a.attack(b)
# puts a.health, b.health
