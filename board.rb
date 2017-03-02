class Board
	attr_accessor :board 

    def initialize
        @board = ["", "", "", "", "","", "", "", ""]
    end

    def set_position(position, marker)
       @board[position] = marker
    end

    def check_position?(position)
    	if @board[position] == ""
    		true
    	else
    		false
    	end
    end
    def check_full?()
    	@board.count("") == 0
    end
end