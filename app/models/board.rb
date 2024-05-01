class Board < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, length: {maximum: 254}, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :height, numericality: { only_integer: true, greater_than: 0 }
  validates :width, numericality: { only_integer: true, greater_than: 0 }
  validates :mine_count, numericality: { only_integer: true, greater_than: 0 }
  validate :mine_count_is_less_than_board_size

  before_save :generate_layout

  scope :latest_ten, -> { order(created_at: :desc).limit(10) }


  private 

  def generate_layout
    self.layout = BoardGenerator.call(height:, width:, mine_count:)
  end

  def mine_count_is_less_than_board_size
    if mine_count && height && width
      if mine_count > height * width 
        errors.add(:mine_count, "should be less than height * width of board")
      end
    end
  end
end
