class Game
  attr_accessor :game_end

  def initialize(playername1="Zorg", playername2="Buhz")
    @player1 = Player.new("#{playername1}","X")
    @player2 = Player.new("#{playername2}","O")
    @@score_player1 = 0
    @@score_player2 = 0
    @@p_hash = { 
      :a1 => " ",
      :a2 => " ",
      :a3 => " ",
      :b1 => " ",
      :b2 => " ",
      :b3 => " ",
      :c1 => " ",
      :c2 => " ",
      :c3 => " " 
    }
  end

  def game_reset
    @@p_hash = { 
      :a1 => " ",
      :a2 => " ",
      :a3 => " ",
      :b1 => " ",
      :b2 => " ",
      :b3 => " ",
      :c1 => " ",
      :c2 => " ",
      :c3 => " " 
    }
    Player.reset_turn()
  end

  def self.is_position_valid?(position)
    if @@p_hash[position] == " " && @@p_hash[position] != nil
      return true
    end 
  end

  def self.add_on_board(valid_position, team)
    @@p_hash[valid_position] = "#{team}"
  end

  def is_game_won?
    if ((@@p_hash[:a1] == "O") && (@@p_hash[:a2] == "O") && (@@p_hash[:a3] == "O")) ||
       ((@@p_hash[:b1] == "O") && (@@p_hash[:b2] == "O") && (@@p_hash[:b3] == "O")) ||
       ((@@p_hash[:c1] == "O") && (@@p_hash[:c2] == "O") && (@@p_hash[:c3] == "O")) ||
       ((@@p_hash[:a1] == "O") && (@@p_hash[:b1] == "O") && (@@p_hash[:c1] == "O")) ||
       ((@@p_hash[:a2] == "O") && (@@p_hash[:b2] == "O") && (@@p_hash[:c2] == "O")) ||
       ((@@p_hash[:a3] == "O") && (@@p_hash[:b3] == "O") && (@@p_hash[:c3] == "O")) ||
       ((@@p_hash[:a1] == "O") && (@@p_hash[:b2] == "O") && (@@p_hash[:c3] == "O")) ||
       ((@@p_hash[:a3] == "O") && (@@p_hash[:b2] == "O") && (@@p_hash[:c1] == "O")) ||
       ((@@p_hash[:a1] == "X") && (@@p_hash[:a2] == "X") && (@@p_hash[:a3] == "X")) ||
       ((@@p_hash[:b1] == "X") && (@@p_hash[:b2] == "X") && (@@p_hash[:b3] == "X")) ||
       ((@@p_hash[:c1] == "X") && (@@p_hash[:c2] == "X") && (@@p_hash[:c3] == "X")) ||
       ((@@p_hash[:a1] == "X") && (@@p_hash[:b1] == "X") && (@@p_hash[:c1] == "X")) ||
       ((@@p_hash[:a2] == "X") && (@@p_hash[:b2] == "X") && (@@p_hash[:c2] == "X")) ||
       ((@@p_hash[:a3] == "X") && (@@p_hash[:b3] == "X") && (@@p_hash[:c3] == "X")) ||
       ((@@p_hash[:a1] == "X") && (@@p_hash[:b2] == "X") && (@@p_hash[:c3] == "X")) ||
       ((@@p_hash[:a3] == "X") && (@@p_hash[:b2] == "X") && (@@p_hash[:c1] == "X"))
      return true 
    elsif @player1.are_turns_over? == true
      return nil
    end 
    return false 
  end 
  
  def board_game
    system("clear")
    puts <<-'EOF'

          _________ __                 __ ________          __        
         /   ______/  |_____________ _/  |\_____  \   ____ |__|__  ___
         \_____   \   __\_  __ \__  \\   __\_(__  <  / ___\|  \  \/  /
         /         |  |  |   _\___\__\\_ ___\_     \/ /_/  >  |>    < 
        /_______  /|__|  |__|     |     |     |__  /\___  /|__/__/\_ \
    EOF
    puts "                \\/         A|  #{@@p_hash[:a1]}  |  #{@@p_hash[:a2]}  |  #{@@p_hash[:a3]}  |  \\//_____/          \\/"
    puts <<-'EOF'
                            |_____|_____|_____|
                            |     |     |     |
    EOF
    puts "                           B|  #{@@p_hash[:b1]}  |  #{@@p_hash[:b2]}  |  #{@@p_hash[:b3]}  |"
    puts <<-'EOF'
                            |_____|_____|_____|
                            |     |     |     |
    EOF
    puts "                           C|  #{@@p_hash[:c1]}  |  #{@@p_hash[:c2]}  |  #{@@p_hash[:c3]}  |_"
    puts <<-'EOF'
                          /_|_____|_____|_____| \
                         __ /  1  /  2  /  3  / /
                        / __// /_/ / /_/ / /_/ / 
                       /____/\____/\____/\____/  
                                
    EOF
  end

  def game_loop
    while is_game_won? == false
      board_game()
      @player1.get_player_move()
      if is_game_won? != false
        @@score_player1 += 1
        winner(@player1.playername)
        break
      end
      board_game()
      @player2.get_player_move()
      if is_game_won? != false
        @@score_player2 += 1
        winner(@player2.playername)
      end
    end
  end 

  def winner(name_player)
    if is_game_won? == true 
    board_game()
    puts "Le Champion #{name_player} a gagné ! "
    puts "Score total: #{@player1.playername}: #{@@score_player1} points, #{@player2.playername}: #{@@score_player2} points."
    else is_game_won? == nil 
    board_game()
    puts "La puissance de nos deux Champions ne peut être départagée..."
    puts "Score total: #{@player1.playername}: #{@@score_player1} points, #{@player2.playername}: #{@@score_player2} points."
     end 
  end

  def new_game
    valid_input = false 
    while valid_input != true
      puts "Voulez-vous rejouer? oui/non"
      print "> "
      result = gets.chomp
      if result == "oui"
        valid_input == true
        game_reset()
        game_loop()
      elsif result == "non"
        valid_input == true
        puts "Au revoir les puceaux spatiaux."
          break
      end
    end
  end

end

