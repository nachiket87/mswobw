# frozen_string_literal: true

class BoardListItemComponent < ViewComponent::Base
  with_collection_parameter :board

  def initialize(board:)
    @board = board
  end

end
