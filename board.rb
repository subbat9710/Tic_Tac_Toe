class Board
	attr_accessor :board 

    def initialize()
        @board = ["", "", "", "", "","", "", "", ""]
    end
    def setposition(position, marker)
       @board[position] = marker
    end
end