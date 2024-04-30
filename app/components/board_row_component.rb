# frozen_string_literal: true

class BoardRowComponent < ViewComponent::Base
  with_collection_parameter :board_row

  def initialize(board_row:)
    @board_row = board_row
  end

end
