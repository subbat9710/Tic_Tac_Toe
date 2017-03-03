class Board
	attr_accessor :board #attr_accessor turn instance variable into instance method ( like @ no longer required ) in the class definition.

    def initialize
        @board = ["", "", "", "", "", "", "", "", ""] #simply returning instance variable @board
    end

    def set_position(position, marker)
       @board[position] = marker  
    end

    def check_position?(position)
    	if @board[position] == ""
    		true
    	else
    		false   #return false for the free position
    	end
    end
    def check_full?()
    	@board.count("") == 0
    end
    def stub_winner?
    	true
    end
    def stub_losser?
        false
    end
end