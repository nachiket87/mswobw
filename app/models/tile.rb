class Tile
  attr_accessor :mine, :revealed, :flagged

  def initialize(mine: false, revealed: false, flagged: false)
    @mine = mine
    @revealed = revealed
    @flagged = flagged
  end

  def mine?
    @mine
  end
end
