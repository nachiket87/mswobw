require "test_helper"

class GenerateLayoutJobTest < ActiveJob::TestCase
  test "creates a layout for a board" do
    board = boards(:one)
    # make sure the board does not contain a layout already
    refute board.layout?

    perform_enqueued_jobs do
      GenerateLayoutJob.perform_later(board_id: board.id)
    end

    assert board.reload.layout?
  end
end
