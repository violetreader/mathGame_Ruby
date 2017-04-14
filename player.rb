require './question'

class Player
  attr_accessor :name
  attr_accessor :life
  attr_accessor :total_life

  def initialize(name, life)
    @name = name
    @total_life = life
  end

end

