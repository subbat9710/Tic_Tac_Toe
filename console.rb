require_relative "board.rb"
require_relative "sequential.rb"
require_relative "board_player.rb"
require_relative "random.rb"

class Console
	attr_accessor :board, :player, :player1, :player2, :currentplayer

	def initialize 
		@board = Board.new
		@player = Player.new("Player1", "Player2")
   
	end

	def draw_board  #drawing a board 
		puts "\n
		    #{@board.board[0]}  |  #{@board.board[1]}  |  #{@board.board[2]}\n
		    -------------
		    #{@board.board[3]}  |  #{@board.board[4]}  |  #{@board.board[5]}\n
		    -------------
		    #{@board.board[6]}  |  #{@board.board[7]}  |  #{@board.board[8]}\n\n"  
    end 

    def switch_player(currentplayer)
    	if currentplayer == player.name1
    	   currentplayer = player.name2
    	else
    	   currentplayer = player.name1
    	end	
    end
    def get_move
    	currentplayer.get_move(board)
    end
    def game_over?
    	board.stub_winner? || (stub_winner? == false && check_full? == true)
    end
    def game_status  #check for game, if currentplayer wins then win otherwise tie.
    	if board.stub_winner?
    		puts "#{currentplayer} you won"
    	else 
    		puts "tie"
    	end
    end
    def check(pick, currentplayer) #check pick spot for availability
        if board[pick] == pick + 1
            board[pick] = currentplayer.marker
            true
        else
            false
        end
    end
end
    console = Console.new
    console.draw_board