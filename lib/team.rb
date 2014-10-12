class Team
  attr_reader :goalkeeper, :defence, :midfield, :attack

  def initialize(goalkeeper:, defence:, midfield:, attack:)
    @goalkeeper = goalkeeper
    @defence = defence
    @midfield = midfield
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

end
