class Player
  @@tour = 0
  attr_accessor :playername, :team, :tour

  def initialize(playername, team)
    @playername = playername
    @team = team
  end

  def are_turns_over?
    if @tour == 9
      return true
    end
  end

  def get_player_move
    valid_input = false 
    while valid_input != true
      puts "#{@playername}, où voulez placer votre #{@team} ?"
      print "> "
      position_choice = gets.chomp
      if is_position_valid?(position_choice.downcase!)
        valid_input = true
        @@tour += 1
        add_on_board(position_choice, @team)
      else
        puts "C'est pas bon enculé, réecris."
      end
    end
  end
end