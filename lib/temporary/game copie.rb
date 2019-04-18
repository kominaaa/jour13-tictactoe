class Game
	def initialize 
		puts "Bienvenue dans le jeu du morpion !"
		puts "Quel est le nom du premier joueur ?"
		print "===>"
		player1_name = gets.chomp
		puts "Bonjour #{name_player1} ! Tu auras les X durant cette partie !Comment s'appelle ton adversaire?"
		print "===>"
		player2_name = gets.chomp
		puts "Salut #{name_player2}, tu auras les O durant cette partie ! Tu es chaud pour affronter #{name_player1} ?"
		player1 = Player.new(player1_name, "X")
		player2 = Player.new(player2_name, "O")
	end
end

class Player
	attr_accessor :name, :team
	
	def initialize (player1name, team)
		@name = name
		@team = team
	end
end


