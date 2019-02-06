require "pry-byebug"
class Game

  def initialize(throw1, throw2)
    @throw1 = throw1
    @throw2 = throw2
  end

  def play
    throws = []
    throws.push(@throw1, @throw2)

    return "Paper wins! Good job player #{throws.rindex("paper") + 1}!" if throws.include?("paper") && throws.include?("rock")
    return "Rock wins! Good job player #{throws.rindex("rock") + 1}!" if throws.include?("rock") && throws.include?("scissors")
    return "Scissors wins! Good job player #{throws.rindex("scissors") + 1}!" if throws.include?("scissors") && throws.include?("paper")
    return "It's a draw! Play again."
  end
  #END OF CLASS
end
