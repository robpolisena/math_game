
class Question 

  def initialize
    @random_num1 = rand(20)
    @random_num2 = rand(20)
  end

  def ask_question
    "What does #{@random_num1} plus #{@random_num2} equal?"
  end

  def correct_answer
    correct_answer = @random_num1 + @random_num2
  end

end



