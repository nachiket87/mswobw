# frozen_string_literal: true

require "test_helper"

class BoardComponentTest < ViewComponent::TestCase
  def test_component_renders_board_name
     board = boards(:one)
     render_inline(BoardComponent.new(board: board))
     assert_text("Author: #{board.email}")
     assert_text("Board Name: #{board.name}")
     assert_selector(".board__container", count: 1)
     assert_selector(".board__grid", count: 1)
     assert_selector(".board__info", count: 1)
  end
end
