require('minitest/autorun')
require_relative('../game.rb')

class GameTest < MiniTest::Test

  def setup()
      @game = Game.new("RockPaperScissors")
  end

  def test_rockpaperscissors()
    assert_equal('rock beats scissors - player 1 wins!',
    @game.rockpaperscissors('rock','scissors'))
    assert_equal('paper beats rock - player 2 wins!',
    @game.rockpaperscissors('rock','paper'))
    assert_equal('rock against rock is a draw, play again!',
    @game.rockpaperscissors('rock','rock'))
    assert_equal('please enter rock, paper or scissors',
    @game.rockpaperscissors('dock','rock'))
    assert_equal('scissors beats paper - player 1 wins!',
    @game.rockpaperscissors('scissors','paper'))
    assert_equal('scissors against scissors is a draw, play again!',
    @game.rockpaperscissors('scissors','scissors'))
    assert_equal('please enter rock, paper or scissors',
    @game.rockpaperscissors('scissors','swissors'))
    assert_equal('paper beats rock - player 1 wins!',
    @game.rockpaperscissors('paper','rock'))
    assert_equal('scissors beats paper - player 2 wins!',
    @game.rockpaperscissors('paper','scissors'))
    assert_equal('paper against paper is a draw, play again!',
    @game.rockpaperscissors('paper','paper'))
  end
end
