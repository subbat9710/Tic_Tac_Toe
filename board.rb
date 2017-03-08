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
        winner = false
        win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        win_array.each do |index|
            x_counter = 0
            o_counter = 0
            index.each do |index_check|
                if board[index_check] == "x"
                    x_counter += 1
                elsif board[index_check] == "o"
                    o_counter += 1
                end
                if x_counter == 3
                   winner = true
                else o_counter == 3
                   winner = true
                end
            end
        end
        return winner 
    end
end