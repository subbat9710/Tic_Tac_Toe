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
		board.set_position(0, "x")
		result =["x", "", "", "", "","", "", "", ""]
		assert_equal(result, board.board)
    end
    def test_for_o_for_the_fifth_position
		board = Board.new
		board.set_position(0, "x")
		board.set_position(5, "o")
		result = ["x", "", "", "", "","o", "", "", ""]
		assert_equal(result, board.board)
    end
    def test_for_o_for_the_seventh_position
		board = Board.new
		board.set_position(0, "x")
		board.set_position(7, "o")
		result = ["x", "", "", "", "","", "", "o", ""]
		assert_equal(result, board.board)
    end
    def test_for_x_for_the_eight_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
		board.set_position(8, "x")
        result = ["x", "", "", "", "","o", "", "", "x"]
		assert_equal(result, board.board)
    end
    def test_for_x_for_the_second_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
		board.set_position(2, "x")
        result = ["x", "", "x", "", "","o", "", "", ""]
		assert_equal(result, board.board)
    end
    def test_for_0_for_7_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
		board.set_position(7, "x")
        result = ["x", "", "", "", "","o", "", "x", ""]
		assert_equal(result, board.board)
    end
    def test_for_0_for_6_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
		board.set_position(6, "x")
        result = ["x", "", "", "", "","o", "x", "", ""]
		assert_equal(result, board.board)
	end
    def test_for_o_for_the_eight_position
		board = Board.new
        board.board = ["x", "", "", "", "","o", "", "", ""]
        result = board.check_position?(0)
		assert_equal(false, result)
    end
    def test_for_o_for_the_position_in_6
		board = Board.new
        board.board = ["x", "o", "", "", "","o", "", "", ""]
		result = board.check_position?(1)
		assert_equal(false, result)
    end
    def test_for_minus_four_position
    	board = Board.new
    	board.board = ["x", "o", "", "", "", "", "x", "x", "x"]
    	result = board.check_position?(-4)
    	assert_equal(true, result)
    end
    def test_for_fiften_position
    	board = Board.new
    	board.board = ["x", "o", "", "", "", "", "x", "x", "x"]
    	result = board.check_position?(15)
    	assert_equal(false, result)
    end
    def test_full_board_equals_game_over
    	board = Board.new
    	board.board = ["x", "o", "o", "o", "o", "x", "x", "x", "x"]
    	result = board.check_full?
        assert_equal(true, result)
    end
    def test_almost_full
    	board = Board.new
    	board.board = ["x", "x", "o", "o", "o", "", "x", "x", "x"]
    	result = board.check_full?
    	assert_equal(false, result)
    end
    def test_empty_board
    	board = Board.new
    	board.board = ["", "", "", "", "", "", "", "", ""]
    	result = board.check_full?
    	assert_equal(false, result)
    end
end