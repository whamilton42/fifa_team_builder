class DefenceBuilder
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def defences
    defences = []
    defences << back_three_with_centre_backs if back_three_with_centre_backs.length == 3
    defences << back_three_with_full_backs if back_three_with_full_backs.length == 3
    defences << back_four if back_four.length == 4
    defences
  end


  private

  def back_four
    [
      players.left_backs[0],
      players.right_backs[0],
      players.centre_backs[0],
      players.centre_backs[1] 
    ].compact
  end

  def back_three_with_centre_backs
    [
      players.centre_backs[0],
      players.centre_backs[1],
      players.centre_backs[2] 
    ].compact
  end

  def back_three_with_full_backs
    [
      players.left_backs[0],
      players.centre_backs[0],
      players.right_backs[0] 
    ].compact
  end

end
