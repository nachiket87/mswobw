# frozen_string_literal: true

require "test_helper"

class BoardListItemComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    board = boards(:one)
    render_inline(BoardListItemComponent.new(board: board))
    assert_text("Author: #{board.email}", count: 1)
    assert_text(board.name, count: 1)
  end
end
