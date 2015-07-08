class Unit

  attr_reader :health_points

 def initialize(hp, ap)
  @health_points = hp
  @attack_points = ap
 end

  def attack!(unit)
    if unit.is_a?(Unit)
      unit.damage(@attack_points)
    elsif unit.is_a?(Barracks)
      unit.damage(@attack_points * 2)
    end      
  end

  def damage(points)
    @health_points -= points
  end

end