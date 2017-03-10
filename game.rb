class Game
    attr_accessor :Board, :Player1, :Player2, :currentplayer

    def initialize(players, board = Board.new)
    	@players = (player1, player2)
    	@board = board
    	@currentplayer, @players = players.shuffle
    end
end