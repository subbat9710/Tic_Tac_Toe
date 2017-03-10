require_relative "console.rb"

layer1 = Player.new("x")
layer2 = Invincible.new("o")
game = Console.new(player1,player2)

game.display_intro
game.display_board
until game.game_over?
	game.change_player(@current_player)

	position = game.get_move
	game.update_board(position)

	game.display_board
end
game.display_game_status