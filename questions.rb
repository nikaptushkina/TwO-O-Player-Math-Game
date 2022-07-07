# Chooses two numbers between 1 - 20 to make addition provlems
# Check the answer

class questions
  attr_reader :newQuestion :answer

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    @newQuestion = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end
end