require './question'
require './player'

jess = Player.new("Jess", 3)
brendon = Player.new("Brendon", 3)

question = Question.new(jess, brendon)

100.times do
  if question.lose_game?
    puts "Thanks for playing!"
    break
  end
  question.playa1_ask_q
  question.playa2_ask_q
end


