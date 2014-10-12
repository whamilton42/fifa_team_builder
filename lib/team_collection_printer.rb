require 'team_printer'

class TeamCollectionPrinter
  attr_reader :teams

  class << self
    def call(teams)
      new(teams).call
    end
  end

  def initialize(teams)
    @teams = teams
  end

  def call
    teams.each do |team|
      TeamPrinter.new(team).print
      puts "\n---------\n\n"
    end
  end

end
