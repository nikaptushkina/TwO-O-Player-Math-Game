#All the game functions for making players, starting, taking turns, checking the score, determining the winner, and ending the game

class Game
  def initialize_player(name)
    @name = name
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
  end

  # starts the game by telling the user and starts taking turns
  def start
    puts "Starting a new game!"
    take_turn
  end

  # a turn starts with a new question, checks the core and shows it before taking another turn
  def take_turn
    @p1.new_question
    check_score
    @p2.new_question
    check_score
    show_score
    puts ">>>>>>NEW TURN<<<<<<"
    take_turn
  end

  # this checks the score to see if either players are dead, and which player has won
  def check_score
    if @p1.player_dead
      winner(@p2)
    elsif @p2.player_dead
      winner(@p1)
    end
  end

  # shows the score at the end of each turn
  def show_score
    puts "Player 1: #{@p1.lives}/3 vs Player 2: #{@p2.lives}/3"
  end

  # when there is a winner the game is over
  def end_of_game(player)
    puts ">>>>>>GAME OVER<<<<<<"
    puts "#{player.name} wins with a score of #{player.lives}/3"
    exit(0)
  end
end