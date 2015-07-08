require_relative 'unit'

class Siege < Unit

  attr_accessor :attack_power, :health_points

  def initialize()
    @attack_power = 50
    @health_points = 400
  end


end