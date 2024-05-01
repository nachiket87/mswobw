# frozen_string_literal: true

require "test_helper"

class BoardRowComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
     board = boards(:one)
     board_layout = BoardGenerator.call(height: 5, width: 5, mine_count: 5).as_json
     render_inline(BoardRowComponent.with_collection(board_layout))
     assert_selector(".board__row", count: 5)
  end
end
