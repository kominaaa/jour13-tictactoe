class Game
	def initialize 
		puts "Bienvenue dans le jeu du morpion !"
		puts "Quel est le nom du premier joueur ?"
		print "===>"
		name_player1 = gets.chomp
		puts "Bonjour #{name_player1} ! Tu auras les X durant cette partie !Comment s'appelle ton adversaire?"
		print "===>"
		name_player2 = gets.chomp
		puts "Salut #{name_player2}, tu auras les O durant cette partie ! Tu es chaud pour affronter #{name_player1} ?"
		name_player1 = X
		name_player2 = O
		name_player1 = Player.new(name, "X")
		name_player2 = Player.new(name, "O")
	end
end
class Player
	attr_accessor :name, :team
	def initialize (name, team)
		@name = name
		@team = team
	end
end


