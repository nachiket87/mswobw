class GenerateLayoutJob < ApplicationJob
  queue_as :default

  def perform(board_id:)
    board = Board.find(board_id)
    board.layout = BoardGenerator.call(height: board.height, width: board.width, mine_count: board.mine_count)
    board.save
  end
end
