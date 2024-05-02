class Board < ApplicationRecord
  include ActionView::RecordIdentifier

  validates :name, presence: true
  validates :email, presence: true, length: {maximum: 254}, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :height, numericality: { only_integer: true, greater_than: 0 }
  validates :width, numericality: { only_integer: true, greater_than: 0 }
  validates :mine_count, numericality: { only_integer: true, greater_than: 0 }
  validate :mine_count_is_less_than_board_size

  after_create_commit :generate_layout

  after_update_commit -> { broadcast_name_change }

  scope :latest_ten, -> { order(created_at: :desc).limit(10) }

  def broadcast_name_change
    broadcast_update_to(self, target: dom_id(self), renderable: BoardRowComponent.with_collection(self.layout))
  end

  private 

  def generate_layout
    GenerateLayoutJob.perform_later(board_id: id)
  end

  def mine_count_is_less_than_board_size
    if mine_count && height && width
      if mine_count > height * width 
        errors.add(:mine_count, "should be less than height * width of board")
      end
    end
  end
end
