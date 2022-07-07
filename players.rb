# Player class will start with 3/ 3 lives
# Player class will keep track of the number of lives (state = 3/2/1/0)
# Who the current player is (state = true/false)
# Player 1 will have current_player initialize to true
# Player 2 will have current_player initialize to false
# It will not conain user I/O
# Will include losing life method which decrements the lives

class Player
  attr_accessor :lives, :turn
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end
end

p = Player.new("Mike")
puts p.name
puts p.lives
puts p.turn
