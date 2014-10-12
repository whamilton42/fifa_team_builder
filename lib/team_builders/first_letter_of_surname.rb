require 'player'
require 'player_collection'
require 'team_builder'
require 'team_collection_printer'

class FirstLetterOfSurname

  class << self
    def print
      new.print
    end
  end

  def print
    teams = []

    grouped_players = Player.all.group_by { |player| player.last_name[0] }.sort
    grouped_players.each do |letter, players|
      team_builder = TeamBuilder.new(PlayerCollection.new(players))
      teams << team_builder.best_team if team_builder.best_team
    end

    teams = teams.sort_by(&:rating).reverse
    TeamCollectionPrinter.call(teams)
  end

end
