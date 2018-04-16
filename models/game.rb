class Game

  attr_reader

  def initialize()

  end


  def rockpaperscissors(item1, item2)
    case item1
    when "rock"
      case item2
      when "scissors"
        return "rock beats scissors - player 1 wins!"
      when "paper"
        return "paper beats rock - player 2 wins!"
      when "rock"
        return "rock against rock is a draw, play again!"
      else
        return "please enter rock, paper or scissors"
      end
    when "scissors"
      case item2
      when "rock"
        return "rock beats scissors - player 2 wins!"
      when "paper"
        return "scissors beats paper - player 1 wins!"
      when "scissors"
        return "scissors against scissors is a draw, play again!"
      else
        return "please enter rock, paper or scissors"
      end
    when "paper"
      case item2
      when "rock"
        return "paper beats rock - player 1 wins!"
      when "scissors"
        return "scissors beats paper - player 2 wins!"
      when "paper"
        return "paper against paper is a draw, play again!"
      else
        return "please enter rock, paper or scissors"
      end
    else
      return "please enter rock, paper or scissors"
    end
  end
end
