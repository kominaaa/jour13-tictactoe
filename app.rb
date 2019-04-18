require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/show'

def perform

  puts "Grand Maître Stratège numéro 1, entrez ici votre nom."
  print "> "
  playername1 = gets.chomp

  puts "\nMaintenant, c'est votre tour, Grand Maître Stratège numéro 2."
  print "> "
  playername2 = gets.chomp

  my_game = Game.new(playername1,playername2)
  my_game.game_loop()
  my_game.new_game()
  
end

michel = Show.new
michel.startmenu()
perform()