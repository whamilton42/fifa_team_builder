require 'player'

class Scraper
  PLAYERS_URL = 'http://www.futhead.com/15/players/all/all/all/all/all/all/all/all/all/rating/table/'
  GOALKEEPERS_URL = 'http://www.futhead.com/15/players/gk/all/all/all/all/all/all/all/all/rating/table/'

  class << self
    def call
      self.new.call
    end
  end

  def call
    populate(PLAYERS_URL)
    populate(GOALKEEPERS_URL, 'GK')
  end

  private

  def populate(url, position_override = nil)
    agent = Mechanize.new
    agent.get(url)

    while next_link = agent.page.link_with(class: 'next')
      agent.page.search('.player-row').each do |player_row|
        name = player_row.search('.player')[0].search('.name')[0].text.strip
        position = position_override || player_row.search('.position')[0].text.strip
        rating = player_row.search('.rating')[0].text.strip.to_i

        puts "#{name} - #{rating} - #{position}"
        upsert(name, rating, position)
      end

      agent.click next_link
    end
  end

  def upsert(name, rating, position)
    player = DB[:players].where(name: name).first

    if player
      player.update(
        rating: rating,
        position: position
      )
    else
      DB[:players].insert(
        name: name, 
        rating: rating, 
        position: position
      )
    end
  end
end
