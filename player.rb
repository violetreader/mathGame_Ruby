require './question'

class Player
  def initialize(name, life)
    @name = name
    @total_life = life
    @life = life
  end

  def lose_life
    amt = 1
    @name - amt if ans_wrong
  end

  def lose_game?
    @life <= 0
  end
end

