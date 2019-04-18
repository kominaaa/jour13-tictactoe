class Game
  attr_accessor :game_end

  def initialize(playername1="Zorg", playername2="Buhz")
    @player1 = Player.new("#{playername1}","X")
    @player2 = Player.new("#{playername2}","O")
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

  def self.is_position_valid?(position)


    if @@p_hash[position] == " " && @@p_hash[position] != nil
      return true
    end 
  end


  def self.add_on_board(valid_position, team)
    @@p_hash[valid_position] = "#{team}"
  end
  







  def is_game_won?
    array_win = [
      '{:a1 => "O", :a2 => "O", :a3 => "O" }', 
      '{ :b1 => "O", :b2 => "O", :b3 => "O" }', 
      '{ :c1 => "O", :c2 => "O", :c3 => "O" }', 
      '{ :a1 => "O", :b1 => "O", :c1 => "O" }',
      '{ :a2 => "O", :b2 => "O", :c2 => "O" }',
      '{ :a3 => "O", :b3 => "O", :c3 => "O" }',
      '{ :a1 => "O", :b2 => "O", :c3 => "O" }',
      '{ :a3 => "O", :b2 => "O", :c1 => "O" }',
      '{ :a1 => "X", :a2 => "X", :a3 => "X" }', 
      '{ :b1 => "X", :b2 => "X", :b3 => "X" }', 
      '{ :c1 => "X", :c2 => "X", :c3 => "X" }', 
      '{ :a1 => "X", :b1 => "X", :c1 => "X" }',
      '{ :a2 => "X", :b2 => "X", :c2 => "X" }',
      '{ :a3 => "X", :b3 => "X", :c3 => "X" }',
      '{ :a1 => "X", :b2 => "X", :c3 => "X" }',
      '{ :a3 => "X", :b2 => "X", :c1 => "X" }',
    ]     
    check = @@p_hash.to_s
    puts check 

    array_win.each do | winline |
puts winline
      if check.include?(winline)
        @game_end = true
        break
      elsif @player1.are_turns_over? 
        return nil
      else 
        return false
      end
    end
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
        break
      end
      board_game()
      @player2.get_player_move()
    end

  end
end