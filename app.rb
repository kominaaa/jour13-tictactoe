require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts <<-'EOF'
  _________ __                 __ ________          __        
 /   _____ /  |_____________ _/  |\_____  \   ____ |__|__  ___
 \_____   \   __\_  __ \__  \\   __\_(__  <  / ___\|  \  \/  /
 /         |  |  |  | \// __ \|  | /       \/ /_/  >  |>    < 
/_______  /|__|  |__|_ (_____ \__|/______  /\___  /|__/__/\_ \
        \/        |__ \ / __ \/ __ \/ __ \/______/          \/
                  __/ // / / / / / / / / /
                 / __// /_/ / /_/ / /_/ / 
                /____/\____/\____/\____/  
                          
                Bienvenue dans Strat3gix 2000
     
     CHAMPIONS, APPUYEZ SUR ENTREE POUR RELEVER LE DEFI !

EOF
gets.chomp

puts "Grand Maître Stratège numéro 1, entre ici ton nom."
print "> "
playername1 = gets.chomp

puts "\nMaintenant, c'est ton tour, Grand Maître Stratège numéro 2."
print "> "
playername2 = gets.chomp

my_game = Game.new(playername1,playername2)

my_game.game_loop()
