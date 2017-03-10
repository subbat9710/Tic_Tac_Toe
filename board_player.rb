class Player
	attr_accessor :name1, :name2, :currentplayer
	def initialize(name1, name2)
		puts "Welcome #{name1} and #{name2}!"
		@name1=name1
		@name2=name2
		@currentplayer=name1
    end
end