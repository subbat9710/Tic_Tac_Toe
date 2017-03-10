require "minitest/autorun"
require_relative "human.rb"
require_relative "board.rb"

class TestHuman < Minitest::Test

	def test_for_human_turn
		human = Human.new("x")
		board = Board.new
		board.board = ["x", "", "1", "o", "", "", "", "", ""]
		assert_equal(1, human.get_move(board))
    end
end