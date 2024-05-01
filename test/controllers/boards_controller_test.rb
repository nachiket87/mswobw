require "test_helper"

class BoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boards_path
    assert_response :success
  end

  test "should get new" do
    get new_board_path
    assert_response :success
  end

  test "should get show" do
    get board_path(boards(:one))
    assert_response :success
  end

  test "should post create a board" do
    assert_difference("Board.count") do
      post boards_url, params: { board: { email: 'email@example.com', name: 'Board Name', height: 5, width: 5, mine_count: 5 } }
    end

    assert_redirected_to board_url(Board.last)
  end
end
