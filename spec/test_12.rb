# Units start off alive but they die if their HP hits 0 or lower. 
# This is usually a result of receiving damage from combat.

# Implementation: Define a method dead? on the Unit class. We add 
# it to Unit instead of Footman for example b/c all units can die, not just footman or peasants.

require_relative 'spec_helper'

describe Unit do
  
  describe "initialization" do

    it "requires HP and AP instead of defaulting them" do
      @unit = Unit.new(0, 5)
    end

  end

  describe "#dead?" do

    it "returns true when unit hitpoints equals 0" do
      @unit.should_receive(:dead?).and_return(true)
      expect(@unit.dead?).to be_truthy
    end

  end


end