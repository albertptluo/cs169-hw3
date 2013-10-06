class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1 = player1[1].downcase
    p2 = player2[1].downcase
    if  (not ["r", "s", "p"].include?(p1)) or
        (not ["r", "s", "p"].include?(p2))
      raise NoSuchStrategyError,"Strategy must be one of R,P,S"
    end
    if  (p1 == p2) or
        (p1 == "r" and p2 == "s") or
        (p1 == "s" and p2 == "p") or
        (p1 == "p" and p2 == "r")
      return player1
    end
    return player2
  end

  def self.tournament_winner(tournament)
    if tournament[0].is_a? String
      return tournament
    end
    return winner(tournament_winner(tournament[0]),
                  tournament_winner(tournament[1]))
  end

end
