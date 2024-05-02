# frozen_string_literal: true

class BoardComponent < ViewComponent::Base
  include Turbo::StreamsHelper
  def initialize(board:)
    @board = board
    @layout = board.layout
  end

end
