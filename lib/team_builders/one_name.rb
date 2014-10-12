require 'player'
require 'player_collection'
require 'team_builder'
require 'team_printer'

# This is meant to list the best team with players with
# 'one name' - e.g. Hulk, Neymar etc.
#
# Unfortunately, it doesn't really work since it seems all data 
# sources have players wrongly down as having 'one name', when 
# most people don't refer to them like that.
class OneName

  class << self
    def print
      new.print
    end
  end

  def print
    teams = []

    players = Player.all.select(&:one_name?)
    team_builder = TeamBuilder.new(PlayerCollection.new(players))
    team = TeamPrinter.new(team_builder.best_team)

    team.print
  end

end
