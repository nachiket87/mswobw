require "test_helper"

class BoardGeneratorTest < ActiveSupport::TestCase
   test "generates a 2d array of correct height and width and mine count" do
     height = 5
     width = 7
     mine_count = 5
     result_array = BoardGenerator.call(height:, width:, mine_count:)

     assert_equal height, result_array.count 
     assert_equal width, result_array.first.count 
     assert_equal mine_count, result_array.flatten.filter { _1.mine }.count
   end
end
