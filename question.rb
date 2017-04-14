class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def generatedMathQ
    "What does #{num1} plus #{num2} equal?"
  end

end
