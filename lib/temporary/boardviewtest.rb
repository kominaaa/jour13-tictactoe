system("clear")
p_hash = { :a1 => " ", :a2 => "O", :a3 => "X", :b1 => "X", :b2 => "X", :b3 => "X", :c1 => "O", :c2 => "X", :c3 => "X" }
#puts p_hash[:a2]




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

x = gets.chomp
system("clear")

puts <<-'EOF'

  _________ __                 __ ________          __        
 /   ______/  |_____________ _/  |\_____  \   ____ |__|__  ___
 \_____   \   __\_  __ \__  \\   __\_(__  <  / ___\|  \  \/  /
 /         |  |  |   _\___\__\\_ ___\_     \/ /_/  >  |>    < 
/_______  /|__|  |__|     |     |     |__  /\___  /|__/__/\_ \
EOF
puts "        \\/         A|  #{p_hash[:a1]}  |  #{p_hash[:a2]}  |  #{p_hash[:a3]}  |  \\//_____/          \\/"
puts <<-'EOF'
                    |_____|_____|_____|
                    |     |     |     |
EOF
puts "                   B|  #{p_hash[:b1]}  |  #{p_hash[:b2]}  |  #{p_hash[:b3]}  |"
puts <<-'EOF'
                    |_____|_____|_____|
                    |     |     |     |
EOF
puts "                   C|  #{p_hash[:c1]}  |  #{p_hash[:c2]}  |  #{p_hash[:c3]}  |_"
puts <<-'EOF'
                  /_|_____|_____|_____| \
                 __/   1  /  2  /  3  / /
                / __// /_/ / /_/ / /_/ / 
               /____/\____/\____/\____/  
                                
EOF
#puts "Maître(sse) #{joueur_1}"
