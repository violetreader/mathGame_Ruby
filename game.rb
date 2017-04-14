class Game
  attr_reader :player, :correctAnswer, :answer

  def initialize(player)
    @player = player
    @amt = 1
    @correctAnswer = nil
    @answer = nil
  end

  def ask
    p "------ NEXT TURN ------"
    q = Question.new
    @correctAnswer = q.num1 + q.num2
    p "#{@player.name}: #{q.generatedMathQ}"
    @answer = gets.chomp.to_i
  end

  def lose_life
    @player.total_life = @player.total_life - @amt
  end

  def score
      "#{@player.name}: #{@player.total_life}/3"
  end

  def lose_game?
    @player.total_life < 1
  end
end

