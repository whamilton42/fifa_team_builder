class TeamPrinter
  attr_reader :team

  def initialize(team)
    @team = team
  end

  def print
    puts team.goalkeeper.name
    
    puts "\n"
        
    team.defence.each do |player|
      puts player.name
    end

    puts "\n"

    team.midfield.each do |player|
      puts player.name
    end

    puts "\n"

    team.attack.each do |player|
      puts player.name
    end
  end

end
