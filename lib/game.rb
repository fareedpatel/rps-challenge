require 'computer'


class Game

WEAPON = [:rock, :paper, :scissors]

# def choose_weapon
# WEAPON.sample
# end


	def initialize(computer = Computer.new, player = Player.new)
		@computer = computer
		@player = player
	end

	def computers_choice
		@computer_choice = @computer.choose_weapon
	end	

	def players_choice
		@player_choice = @player.weapon
	end


end