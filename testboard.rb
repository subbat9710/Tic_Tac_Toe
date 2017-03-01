require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test

	def test_for_a_board
		board = Board.new
		result = Array.new(9, "")
		assert_equal(result, board.board)
	end
	def test_2_update_first_position_with_x
		board = Board.new
		board.setposition(0, "x")
		result =["x", "", "", "", "","", "", "", ""]
		assert_equal(result, board.board)
    end
    def test_for_o_for_the_fifth_position
		board = Board.new
		board.setposition(0, "x")
		board.setposition(5, "o")
		result = ["x", "", "", "", "","o", "", "", ""]
		assert_equal(result, board.board)
    end
    def test_for_o_for_the_eight_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
		board.setposition(8, "x")
        result = ["x", "", "", "", "","o", "", "", "x"]
		assert_equal(result, board.board)
    end
end