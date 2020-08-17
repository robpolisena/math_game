
class Player
  attr_reader :number, :lives

  def initialize(number)
    @lives = 3
    @number = number
  end

  def score
    "#{@lives}/3"
  end

  def lose_life
    puts "Player #{@number}: Seriously? No!"
    @lives -= 1
  end
end
