class BoardGenerator
  def self.call(height:, width:, mine_count: 0)
    tiles = Array.new(height * width - mine_count, Tile.new(mine: false, revealed: false, flagged: false))
    tiles += Array.new(mine_count, Tile.new(mine: true, revealed: false, flagged: false))
    tiles.shuffle.each_slice(width).to_a
  end
end
