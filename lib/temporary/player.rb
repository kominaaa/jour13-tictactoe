class Player 
	@@tour = 0
	def initialize(name_player,team)
		@name = name_player
		@team = team
	end 

	def board_case_choice 
		choice_player = gets.chomp.to_s 
			if board_is_empty?(choice_player) == true 
				:choice_player == "#{@team}"
				@@tour += 1
			else 
	end 

	def game_is_finish?
		if @@tour == 9 
			return true 
		else 
			return false 
		end 
