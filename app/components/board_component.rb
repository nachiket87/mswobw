# frozen_string_literal: true

class BoardComponent < ViewComponent::Base
  def initialize(board:)
    @board = board
    @layout = board.layout
  end

end
