require_relative '../../parent/item'

class Books
  attr_reader :archived
  attr_accessor :publisher, :cover_state

  def initilize(args)
    super(args[:genre], args[:author], args[:source], args[:label], args[:publish_date])
    @publisher = args[:publisher]
    @cover_state = args[:cover_state]
  end
end
