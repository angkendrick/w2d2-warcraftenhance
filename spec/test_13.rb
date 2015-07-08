# A dead unit cannot attack another unit. Conversely, an alive unit will also not attack another unit that is already dead.

require_relative 'spec_helper'

describe Unit do
  
  before :each do
    @unit_dead = Unit.new(0,5)
    @unit_alive = Unit.new(10,5)
  end

  describe "#attack!" do
    it "alive unit should not attack a dead unit" do
      @unit_dead.should_not_receive(:damage).with(10)
      @unit_alive.attack!(@unit_dead)
    end
  end

  describe "#attack!" do
    it "dead unit should not attack a live unit" do
      @unit_alive.should_not_receive(:damage).with(10)
      @unit_dead.attack!(@unit_alive)
    end
  end


end