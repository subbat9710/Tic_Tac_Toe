require "minitest/autorun"
require_relative "game.rb"
require_relative "board.rb"
require_relative "board_player.rb"

class TestGame < Minitest::Test

	def test_game_play
		game = Game.new
		player1 = Player1.new("x")
		player2 = Player2.new("o")
		board.board = ["", "", "", "", "", "", "", "", ""] 
		assert_equal(("x"), game.currentplayer)
    end
end