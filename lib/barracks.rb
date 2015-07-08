require_relative 'footman'

class Barracks

  attr_accessor :gold, :food, :health, :lumber

  def initialize()
    @gold = 1000
    @food = 80
    @health = 500
    @lumber = 500
  end

  def damage(points)
    @health -= points / 2
  end

  def can_train_footman?
    self.gold >= 135 && self.food >= 2
  end

  def can_train_siege?
    self.gold >= 200 && self.food >= 3 && self.lumber >= 60
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      footman = Footman.new()
    end
  end

  def can_train_peasant?
    self.gold >= 90 && self.food >= 5
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new()
    end
  end

end
