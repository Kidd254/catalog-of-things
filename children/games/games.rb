require_relative '../../parent/item'

class Games < Item
  attr_reader :archived, last_played_at
  attr_accessor :multiplayer

  def initialize(args)
    super(args[:genre], args[:author], args[:source], args[:label], args[:publish_date])
    @last_played_at = args[:last_played_at].to_i
    @multiplayer = args[:multiplayer]
  end

  def can_be_archived?
    super && @last_played_at > (Date.today.year - last_played_at.year > 2)
  end
end
