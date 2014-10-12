require 'sequel'

class Player < Sequel::Model
  PREPOSITIONS = [
    'al', 
    'de',
    'della',
    "o'",
    'san',
    'van', 
    'van der',
    'von'
  ]

  def one_name?
    !!name.match(Regexp.new('^\S+$'))
  end

  def last_name
    regex = '((\w+ of \w+)?'
    PREPOSITIONS.each do |preposition|
      regex << "(\s#{preposition}\s?)?"
    end
    regex << '\S+)$'

    name.match(Regexp.new(regex, Regexp::IGNORECASE)).captures.first.strip
  end
end
