require_relative 'spec_helper'

# In most strategy games, like Warcraft III, buildings can also be attacked by units. Since a barracks is a building, 
# it has substantial more HP (500) To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. 
# This is because they are quite ineffective against buildings.

# Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#health_points" do

    it "starts off with 500 health points" do
      expect(@barracks.health).to eq(500)
    end

  end

  describe "#damage" do
    it "should reduce the unit's health_points by the attack_power specified" do
      @barracks.damage(10)
      expect(@barracks.health).to eq(495) # starts at 60
    end
  end

end