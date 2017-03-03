require "minitest/autorun"
require_relative "board_player.rb"

class TestBoardPlayer < Minitest::Test

	def test_name1_as_first_player
		board = Player.new("Player1")
		assert_equal("Player1", board.name1)
	end
	def test_name2_as_second_player
		board = Player.new("Player2")
		assert_equal("player2", board.name2)
	end
end