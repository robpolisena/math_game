require_relative './player'
require_relative './question'

class Game 

  def initialize
    @play1 = Player.new("1")
    @play2 = Player.new("2")
    @players = [@play1, @play2]
  end

  def ask_question_get_response
    current_player = @players.first
    @new_question = Question.new
    puts "Player #{current_player.number}: #{@new_question.ask_question}"
    response = gets.chomp.to_i
  end

  def game_over?
    @players.select {|player| player.lives == 0}.length > 0
  end

  def next_turn
    puts "----- NEW TURN -----"
    @players.rotate!
  end

  def display_player_scores
    puts "P#{@play1.number}: #{@play1.score} vs P#{@play2.number}: #{@play2.score}"
  end

  def get_winner
    winner = @players.select {|player| player.lives > 0}.first
    puts "Player #{winner.number} wins with a score of #{winner.score}"
  end

  def play
    until game_over? do
      current_player = @players.first
      player_response = ask_question_get_response

      if (@new_question.correct_answer == player_response) 
        puts "Player #{current_player.number}: YES! You are correct."
      else  
        current_player.lose_life
      end

      display_player_scores
      next_turn
    end

    get_winner
  end

end





    
    



=begin
 
create a game class
have constructor for Player1, Player 2, and 
def next_round variable
def display_player_scores
def alive_player
  def get_winner
    def game_over
      def play
        

output

=end