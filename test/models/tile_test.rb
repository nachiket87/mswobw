require "test_helper"

class TileTest < ActiveSupport::TestCase
  test "Tile#mine?" do
    tile_one = Tile.new(mine: true)
    assert tile_one.mine?

    tile_two = Tile.new(mine: false)
    refute tile_two.mine?
  end

end
