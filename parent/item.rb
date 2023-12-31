class Item
  attr_accessor :genre, :author, :source, :label, :publish_date
  attr_reader :id, :archived

  def initialize(genre, author, source, label, publish_date)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
    @id = rand(1..1000)
  end

  def can_be_archived?
    year_now = Time.now.year
    year_now - @publish_date > 10
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
    else
      ''
    end
  end
end
