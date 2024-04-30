class Board < ApplicationRecord
  before_save :generate_layout

  def generate_layout
    self.layout = BoardGenerator.call(height:, width:, mine_count:)
  end
end
