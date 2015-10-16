class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  players = game
  checkStrategy(game)
  if(game[0][1] == "s" || game[0][1] == "S")
    if(game[1][1] == "r" || game[1][1] == "R")
      return players[1]
    elsif(game[1][1] == "p" || game[1][1] == "P")
      return players[0]
    end
  elsif(game[0][1] == "r" || game[0][1] == "R")
    if(game[1][1] == "s" || game[1][1] == "S")
      return players[0]
    elsif(game[1][1] == "p" || game[1][1] == "P")
      return players[1]
    end
  elsif(game[0][1] == "p" || game[0][1] == "P")
    if(game[1][1] == "s" || game[1][1] == "S")
      return players[1]
    elsif(game[1][1] == "r" || game[1][1] == "R")
      return players[0]
    end
  end
  return players[0]
end

def checkStrategy(game)
  raise NoSuchStrategyError unless game[0][1] =~ /\A[rpsRPS]/
  raise NoSuchStrategyError unless game[1][1] =~ /\A[rpsRPS]/
end

def rps_tournament_winner(tournament)
  if !tournament[0][0].is_a? String
    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  elsif tournament[0][0].is_a? String
    return rps_game_winner(tournament)
  end
end