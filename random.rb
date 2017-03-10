require_relative "board.rb"
require_relative "console.rb"

class Random

	attr_accessor :marker, :current_player

	def initialize(marker)
		@marker=marker
		@current_player=current_player
	end

	def get_move(board, current_player)
		board.sample(1 + rand(board.count))
	end
end