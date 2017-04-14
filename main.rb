require './question'
require './player'
require './game'

# ------------------------------- BUILDING GAME ----------------------- #




brendon = Player.new("Brendon", 3)
jess = Player.new("Jess", 3)
player1 = Game.new(brendon)
player2 = Game.new(jess)


# will loop so game is only over once a player loses all their lives
loop do

  player1.ask
  if player2.answer != player2.correctAnswer
    player2.lose_life
  end
  # p "  #{@player1.name}: #{@player1.total_life}/3 vs #{@player2.name}: #{@player2.total_life}/3"
  player2.ask
  if player1.answer != player1.correctAnswer
    player1.lose_life
  end
  if
    player1.lose_game? || player2.lose_game?
    p "------ GAME OVER ------"
    break
  end

 end

















