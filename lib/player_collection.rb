class PlayerCollection
  MIDFIELD_POSITIONS = %w{ CAM CDM CM LF LM LW RF RM RW }
  FORWARD_POSITIONS = %w{ ST CF }

  attr_reader :players

  def initialize(players)
    @players = players
  end

  def goalkeepers
    goalkeepers = players.select { |player| player.position == 'GK' }
    sort_players(goalkeepers)
  end

  def left_backs
    left_backs = players.select { |player| player.position == 'LB' }
    sort_players(left_backs)
  end

  def right_backs
    right_backs = players.select { |player| player.position == 'RB' }
    sort_players(right_backs)
  end

  def centre_backs
    centre_backs = players.select { |player| player.position == 'CB' }
    sort_players(centre_backs)
  end

  def midfield_players
    midfield_players = players.select { |player| MIDFIELD_POSITIONS.include?(player.position) }
    sort_players(midfield_players)
  end

  def forward_players
    forward_players = players.select { |player| FORWARD_POSITIONS.include?(player.position) }
    sort_players(forward_players)
  end


  private

  def sort_players(players)
    players.sort_by(&:rating).reverse
  end

end
