#contains all the rb files and starts a new game

require './players.rb'
require './questions.rb'
require './game.rb'

new_game = Game.new("New Game")
new_game.start