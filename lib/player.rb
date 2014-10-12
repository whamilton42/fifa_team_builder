require 'sequel'

class Player < Sequel::Model
  CENTRAL_MIDFIELD_POSITIONS = %w{ CAM CDM CM }
  LEFT_MIDFIELD_POSITIONS = %w{ LF LM LW }
  RIGHT_MIDFIELD_POSITIONS = %w{ RF RM RW }
  MIDFIELD_POSITIONS = CENTRAL_MIDFIELD_POSITIONS + LEFT_MIDFIELD_POSITIONS + RIGHT_MIDFIELD_POSITIONS

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

  def left_back?
    position == 'LB'
  end

  def right_back?
    position == 'RB'
  end

  def full_back?
    left_back? || right_back?
  end

  def left_midfielder?
    LEFT_MIDFIELD_POSITIONS.include?(position)
  end

  def right_midfielder?
    RIGHT_MIDFIELD_POSITIONS.include?(position)
  end

  def central_midfielder?
    CENTRAL_MIDFIELD_POSITIONS.include?(position)
  end
end
