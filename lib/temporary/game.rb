class Game 

	def initialize(name1,name2)
		@player1 = Player.new("#{name1}","X")
		@player2 = Player.new("#{name2}","O")
		@p_hash = { :a1 => " ", :a2 => " ", :a3 => " ", :b1 => " ", :b2 => " ", :b3 => " ", :c1 => " ", :c2 => " ", :c3 => " " }
		@player1_win = false 
		@player2_win = false 

	end 

	def game_board
puts <<-'EOF'
       _____ _____ _____ 
      |     |     |     |
EOF
puts "      |  #{@p_hash[:a1]}  |  #{@p_hash[:a2]}  |  #{@p_hash[:a3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
      |     |     |     |
EOF
puts "      |  #{@p_hash[:b1]}  |  #{@p_hash[:b2]}  |  #{@p_hash[:b3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
      |     |     |     |
EOF
puts "      |  #{@p_hash[:c1]}  |  #{@p_hash[:c2]}  |  #{@p_hash[:c3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
EOF
	def board_is_empty?(position) 

	
		if @p_hash[:position]  == " "
			return true 
		else 
			return false 
		end 
	end 

	def win_condition 
	arrayo = []
	arrayx = []
		if player.game_finish == false 
			
			arrayo.each do |winner|
				if winner.include?(@p_hash.to_s)
					@player1_win = true 
					return true 
					break 
				else 
					return false 
				end 
			end 
			arrayx.each do |winner|
				if winner.include?(@p_hash.to_s)
					@player2_win = true 
					return true 
					break 
				else 
					return false 
				end 
			end 
		else 
			return nil 
		end 
	end 

end 