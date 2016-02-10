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



	def win
		if @player_choice = :paper && @computer_choice = :rock 
			return "Player has won!" 
		elsif @player_choice = :rock && @computer_choice = :scissors 
			return "player has won!"
		elsif @player_choice = :scissors && @computer_choice = :paper 
			return "player has won!"
		end
	end

	def lose 
		if @player_choice = :rock && @computer_choice = :paper 
			return "Player has lost!" 
		elsif @player_choice = :scissors && @computer_choice = :rock 
			return "player has lost!"
		elsif @player_choice = :scissors && @computer_choice = :paper 
			return "player has lost!"
		end
	end

	def draw
		if @player_choice = :rock && @computer_choice = :rock 
			return "Player has lost!" 
		elsif @player_choice = :scissors && @computer_choice = :scissors 
			return "player has lost!"
		elsif @player_choice = :paper && @computer_choice = :paper 
			return "player has lost!"
		end
	end

end