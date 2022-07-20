# Chooses two numbers between 1 - 20 to make addition problems
# Check the answer

class Question
  attr_reader :newQuestion, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end


  def ask_question(name)
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer?(input)
    @sum == input
  end
end