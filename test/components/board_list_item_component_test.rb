# frozen_string_literal: true

require "test_helper"

class BoardListItemComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    board = boards(:one)
    assert_equal("<div class=\"board__name\"><a href=\"/boards/#{board.id}\">#{board.name}</a></div>", 
                 render_inline(BoardListItemComponent.new(board: boards(:one))).css(".board__name").to_html)
  end
end
