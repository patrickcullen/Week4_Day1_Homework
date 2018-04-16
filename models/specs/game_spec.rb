require('minitest/autorun')
require_relative('../game.rb')

class TestGame < MiniTest::Test


  def test_rockpaperscissors()
    assert_equal('rock beats scissors - player 1 wins!',
    rockpaperscissors('rock','scissors'))
  end

end
