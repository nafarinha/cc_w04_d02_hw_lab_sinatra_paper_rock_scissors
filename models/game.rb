require "pry-byebug"
class Game

  def initialize(throw1, throw2)
    @throw1 = throw1
    @throw2 = throw2
  end

  # def play
  #   rock_wins = "Rock wins"
  #   paper_wins = "Paper wins"
  #   scissors_wins = "Scissors wins"
  #
  #   if @throw1 == "rock" && @throw2 == "paper"
  #     return paper_wins
  #   elsif @throw1 == "paper" && @throw2 == "rock"
  #     return paper_wins
  #   elsif @throw1 == "rock" && @throw2 == "scissors"
  #     return rock_wins
  #   elsif @throw1 == "scissors" && @throw2 == "rock"
  #     return rock_wins
  #   elsif @throw1 == "paper" && @throw2 == "scissors"
  #     return scissors_wins
  #   elsif @throw1 == "scissors" && @throw2 == "paper"
  #     return scissors_wins
  #   else
  #     return "Tie!"
  #   end
  # end

  def play
    throws = []
    throws.push(@throw1, @throw2)

    return "Paper wins" if throws.include?("paper") && throws.include?("rock")
    return "Rock wins" if throws.include?("rock") && throws.include?("scissors")
    return "Scissors wins" if throws.include?("scissors") && throws.include?("paper")
    return "Tie!"
  end

  #END OF CLASS
end
