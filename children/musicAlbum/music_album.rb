require_relative '../../parent/item'

class MusicAlbum
  attr_reader :archived
  attr_accessor :on_spotify

  def initilize(args)
    super(args[:genre], args[:author], args[:source], args[:label], args[:publish_date])
    @on_spotify = args[:on_spotify]
  end

  def can_be_archived?
    super || @on_spotify == 'true'
  end
end
