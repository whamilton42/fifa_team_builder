class AttackBuilder
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def attacks
    [two, three]
  end


  private

  def two
    players.forward_players[0..1].compact
  end

  def three
    players.forward_players[0..2].compact
  end
end
