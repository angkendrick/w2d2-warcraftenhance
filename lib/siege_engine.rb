require_relative 'unit'

class Siege < Unit

  attr_accessor :attack_power, :health_points

  def initialize()
    @attack_power = 50
    @health_points = 400
  end

  def attack!(unit)
    if unit.is_a?(Unit)
      unit.damage(1)
    elsif unit.is_a?(Barracks)
      unit.damage(@attack_power * 2)
    end      
  end

end