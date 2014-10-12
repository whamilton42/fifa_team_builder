require 'terminal-table'

class TeamPrinter
  attr_reader :team

  def initialize(team)
    @team = team
  end

  def print
    table = Terminal::Table.new(
      headings: [
        "Rating: #{team.rating}"
      ],
      rows: [
        [team.goalkeeper.name],
        [' '],
        [team.defence.map(&:name).join(' - ')],
        [' '],
        [team.midfield.map(&:name).join(' - ')],
        [' '],
        [team.attack.map(&:name).join(' - ')]
      ]
    )

    table.align_column(0, :center)
    puts table
  end

end
