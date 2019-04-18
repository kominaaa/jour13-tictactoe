system("clear")
p_hash = { :a1 => " ", :a2 => "O", :a3 => "X", :b1 => "X", :b2 => "X", :b3 => "X", :c1 => "O", :c2 => "X", :c3 => "X" }
puts p_hash[:a2]


puts <<-'EOF'
       _____ _____ _____ 
      |     |     |     |
EOF
puts "      |  #{p_hash[:a1]}  |  #{p_hash[:a2]}  |  #{p_hash[:a3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
      |     |     |     |
EOF
puts "      |  #{p_hash[:b1]}  |  #{p_hash[:b2]}  |  #{p_hash[:b3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
      |     |     |     |
EOF
puts "      |  #{p_hash[:c1]}  |  #{p_hash[:c2]}  |  #{p_hash[:c3]}  |      "
puts <<-'EOF'
      |_____|_____|_____|
EOF
puts "Maître(sse) #{joueur_1}"