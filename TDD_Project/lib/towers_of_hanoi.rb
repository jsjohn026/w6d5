class TowersOfHanoi
  attr_accessor :stacks

  def initialize
    @stacks = [[1, 2, 3],[],[]]
  end

  def move(start_stack, end_stack)
     disc = @stacks[start_stack].pop
     @stacks[end_stack].push(disc)
  end

  def won?
    return false if !@stacks[0].empty?    
    @stacks[1].last == 3 || @stacks[2].last == 3 
  end

end