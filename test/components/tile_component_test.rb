# frozen_string_literal: true

require "test_helper"

class TileComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    render_inline(TileComponent.new(tile: Tile.new(mine: true).as_json))
    assert_selector(".fa-bomb", count: 1)
  end

  def test_component_renders_non_mine
    render_inline(TileComponent.new(tile: Tile.new(mine: false).as_json))
    assert_selector(".fa-square", count: 1)
  end
end
