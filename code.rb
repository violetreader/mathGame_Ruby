100.times do
  if question.lose_game?
    puts "Thanks for playing!"
    break
  end
  question.playa1_ask_q
  question.playa2_ask_q
end


  def initialize
    @player = player
    @player2 = player2
    @randomNum1
    @randomNum2puts player1 + ": What does #{@randomNum1} plus #{@randomNum2} equal?"
    @playerAns
    @answer
  end

  def playa1_ask_q
    puts "---- NEW TURN ----"
    generatedMathQ
    # puts player1 + ": What does #{@randomNum1} plus #{@randomNum2} equal?"
    player_input
    if answer_correct?
      puts "You got it this time..."
    else playa2_ans_wrong
    end
  end

  def playa2_ask_q
    puts "---- NEW TURN ----"
    generatedMathQ
    # puts player2 + ": What does #{@randomNum1} plus #{@randomNum2} equal?"
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

  def player
    "#{@player.name}"
  end

  def player2
    "#{@player2.name}"
  end

