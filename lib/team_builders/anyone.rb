require 'player'
require 'player_collection'
require 'team_builder'
require 'team_printer'

class Anyone

  class << self
    def print
      new.print
    end
  end

  def print
    players = Player.all
    team_builder = TeamBuilder.new(PlayerCollection.new(players))
    team = TeamPrinter.new(team_builder.best_team)

    team.print
  end

end
