class Human
	attr_accessor :marker 

	def initialize(marker)
		@marker=marker
    end
    def get_move(currentplayer)
    	currentplayer.get_move(board)
    end
end