class Unit

  attr_reader :health_points

 def initialize(hp, ap)
  @health_points = hp
  @attack_points = ap
 end

  def attack!(unit)
    unit.damage(@attack_points)
  end

  def damage(points)
    @health_points -= points
  end

end