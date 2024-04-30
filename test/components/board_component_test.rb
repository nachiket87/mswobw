# frozen_string_literal: true

require "test_helper"

class BoardComponentTest < ViewComponent::TestCase
  def test_component_renders_board_name
     assert_equal(%(<h1>Board Name: Board One</h1>), render_inline(BoardComponent.new(board: boards(:one))).css("h1").to_html)
  end
end
