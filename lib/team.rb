class Team
  attr_reader :goalkeeper, :defence, :midfield, :attack

  def initialize(goalkeeper:, defence:, midfield:, attack:)
    @goalkeeper = goalkeeper
    @defence = sorted_defence(defence)
    @midfield = sorted_midfield(midfield)
    @attack = attack
  end

  def valid?
    players.length == 11 && goalkeeper
  end

  def rating
    players.map(&:rating).inject(:+)
  end

  private

  def players
    [goalkeeper] + defence + midfield + attack
  end

  def sorted_defence(players)
    sorted = []
    if right_back = players.detect(&:right_back?)
      sorted << right_back
      sorted += players.select { |player| !player.full_back? }
      sorted << players.detect(&:left_back?)
    else
      sorted = players
    end

    sorted
  end

  def sorted_midfield(players)
    [
      players.select(&:right_midfielder?),
      players.select(&:central_midfielder?),
      players.select(&:left_midfielder?),
    ].flatten
  end

end
