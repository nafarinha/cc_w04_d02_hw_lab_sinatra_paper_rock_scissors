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
    assert_match("Paper wins!", @game_1.play)
    assert_match("Paper wins!", @game_2.play)
  end

  def test_play__rock_scissors
    assert_match("Rock wins!", @game_3.play)
    assert_match("Rock wins!", @game_4.play)
  end

  def test_play__paper_scissors
    assert_match("Scissors wins!", @game_5.play)
    assert_match("Scissors wins!", @game_6.play)
  end

  def test_play__draw
    assert_equal("It's a draw! Play again", @game_7.play)
    assert_equal("It's a draw! Play again", @game_8.play)
    assert_equal("It's a draw! Play again", @game_9.play)
  end

  def test_play__winner_first_player
    assert_match(/player 1!$/, @game_2.play)
    assert_match(/player 1!$/, @game_3.play)
    assert_match(/player 1!$/, @game_6.play)
  end
  #
  def test_play__winner_second_player
    assert_match(/player 2!$/, @game_1.play)
    assert_match(/player 2!$/, @game_4.play)
    assert_match(/player 2!$/, @game_5.play)
  end
end
