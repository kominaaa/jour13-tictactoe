class Player
  @@tour = 0
  attr_accessor :playername, :team, :tour

  def initialize(playername, team)
    @playername = playername
    @team = team
  end

  def self.reset_turn   #reset du nombre de tours
    @@tour = 0
  end

  def are_turns_over?   #compte du nombre de tours au cours d'une partie
    if @@tour == 9
      return true
    end
  end

  def get_player_move   #méthode testant si la position entrée par le joueur est jouable
    valid_input = false 
    while valid_input != true
      puts "Grand Maître Stratège #{@playername}, où voulez placer votre #{@team} ?"
      print "> "
      position_choice = gets.chomp.to_sym
      if Game.is_position_valid?(position_choice)
        valid_input = true
        @@tour += 1
        Game.add_on_board(position_choice, @team)
      else
        puts "Ce n'est pas une position valable, Grand Maître Stratège."
      end
    end
  end

end