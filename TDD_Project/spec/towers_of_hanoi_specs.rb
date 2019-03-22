require 'towers_of_hanoi'
require 'byebug'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }
    
  describe "#initialize" do
    it "should initialize an instance variable of an array with 3 subarrays" do
      expect(game.stacks).to eq([[1, 2, 3],[],[]])
    end
  end

  describe "#move" do
    it "should move a piece from the first stack to the second stack" do
      game.move(0, 2)
      expect(game.stacks).to eq([[1, 2],[],[3]]) 
    end
  end

  describe "#won?" do
    
    it "end with the first stack is empty and that one of the other stacks is full" do
      game.stacks = [ [], [], [1,2,3]]
      expect(game.stacks[0]).to be_empty
      expect(game.won?).to be(true)
    end

    # the last element in that stack should be 3
  end
end
