class MidfieldBuilder
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def midfields
    [three, four, five]
  end


  private

  def three
    players.midfield_players[0..2].compact
  end

  def four
    players.midfield_players[0..3].compact
  end

  def five
    players.midfield_players[0..4].compact
  end

end
