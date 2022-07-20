# Player class will start with 3/3 lives
# Player class will keep track of the number of lives (state = 3/2/1/0)
# Who the current player is (state = true/false)
# Player 1 will have current_player initialize to true
# Player 2 will have current_player initialize to false
# It will not contain user I/O, but will check it
# Will include losing life and and player_dead methods which decrements the lives and checks if the lives are at 0 (to determine winner)

class Player
  attr_accessor :lives, :turn
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end

  def losing_life
    @lives -= 1
  end

  def player_dead
    @lives == 0
  end  

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print ">>> "
    @userinput = $stdin.gets.chomp
    if new_question.check_answer?(@userinput.to_i)
      puts "Yep, that's correct!"
    else
      puts "Nope, you're wrong"
      losing_life
    end 
  end
end
