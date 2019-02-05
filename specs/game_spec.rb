require "minitest/autorun"
require "minitest/rg"
require_relative "../models/game"


class TestGame < Minitest::Test
  def setup

    @throw_1 = "rock"
    @throw_2 = "paper"
    @throw_3 = "scissors"

#Paper wins rock
    @game_1 = Game.new(@throw_1, @throw_2)
    @game_2 = Game.new(@throw_2, @throw_1)

#Rock wins scissors
    @game_3 = Game.new(@throw_1, @throw_3)
    @game_4 = Game.new(@throw_3, @throw_1)

#Scissors wins paper
    @game_5 = Game.new(@throw_2, @throw_3)
    @game_6 = Game.new(@throw_3, @throw_2)

#Ties
    @game_7 = Game.new(@throw_1, @throw_1)
    @game_8 = Game.new(@throw_2, @throw_2)
    @game_9 = Game.new(@throw_3, @throw_3)

  end

  def test_play__rock_paper
    assert_equal("Paper wins", @game_1.play)
    assert_equal("Paper wins", @game_2.play)
  end

  def test_play__rock_scissors
    assert_equal("Rock wins", @game_3.play)
    assert_equal("Rock wins", @game_4.play)
  end

  def test_play__paper_scissors
    assert_equal("Scissors wins", @game_5.play)
    assert_equal("Scissors wins", @game_6.play)
  end

  def test_play__ties
    assert_equal("Tie!", @game_7.play)
    assert_equal("Tie!", @game_8.play)
    assert_equal("Tie!", @game_9.play)
  end

end
