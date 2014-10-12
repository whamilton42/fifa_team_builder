require 'defence_builder'
require 'midfield_builder'
require 'attack_builder'
require 'team'

class TeamBuilder
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def valid?
    teams.any?
  end

  def best_team
    @best_team ||= Proc.new do
      best_team = teams.first
      teams.each do |team|
        best_team = team if team.rating > best_team.rating
      end

      best_team
    end.call
  end


  private

  def teams
    @teams ||= Proc.new do
      teams = []
      
      defences.each do |defence|
        midfields.each do |midfield|
          attacks.each do |attack|
            team = Team.new(
              goalkeeper: goalkeeper,
              defence: defence,
              midfield: midfield,
              attack: attack
            )
            teams << team if team.valid?
          end
        end
      end

      teams
    end.call
  end

  def goalkeeper
    @goalkeeper ||= players.goalkeepers[0]
  end

  def defences
    @defence_builder ||= DefenceBuilder.new(players).defences
  end

  def midfields
    @midfield_builder ||= MidfieldBuilder.new(players).midfields
  end

  def attacks
    @attack_builder ||= AttackBuilder.new(players).attacks
  end

end
