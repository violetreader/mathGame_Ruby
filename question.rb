class Question


  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @randomNum1
    @randomNum2
    @playerAns
    @answer
  end

  def generatedMathQ
    @randomNum1 = rand(20)
    @randomNum2 = rand(20)
    @answer = @randomNum1 + @randomNum2
  end

  def player_input
    @playerAns = $stdin.gets.chomp
  end

  def answer_correct?
    @playerAns.to_i == @answer.to_i
  end

  def playa1_ask_q
    puts "---- NEW TURN ----"
    generatedMathQ
    puts player1 + ": What does #{@randomNum1} plus #{@randomNum2} equal?"
    player_input
    if answer_correct?
      puts "You got it this time..."
    else playa2_ans_wrong
    end
  end

  def playa2_ask_q
    puts "---- NEW TURN ----"
    generatedMathQ
    puts player2 + ": What does #{@randomNum1} plus #{@randomNum2} equal?"
    player_input
    if answer_correct?
      puts "You got it this time..."
    else playa1_ans_wrong
    end
  end

  def playa1_ans_wrong
    puts player2 + ": That's not right!"
    @player1.total_life -= 1
    if lose_game?
      puts player2 + " wins with a score of #{@player2.total_life}/3"
      puts "---- GAME OVER ----"
    else
      puts score
    end
  end

  def playa2_ans_wrong
    puts player1 + ": Seriously? No!"
    @player2.total_life -= 1
    if lose_game?
      puts player1 + " wins with a score of #{@player1.total_life}/3"
      puts "---- GAME OVER ----"
    else
      puts score
    end
  end

  def score
    "  P1(#{@player1.name}): #{@player1.total_life}/3 vs P2(#{@player2.name}): #{@player2.total_life}/3"
  end

  def player1
    "#{@player1.name}"
  end

  def player2
    "#{@player2.name}"
  end

  def lose_game?
    @player1.total_life <= 0 || @player2.total_life <= 0
  end

end


