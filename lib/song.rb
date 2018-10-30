class Song

  attr_accessor :name, :artist, :genre
  # belong_to :artist
  # belong_to :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
     @artist = artist
     @genre = genre
    @@all << self
  end

  def Song.all
    @@all
  end

end
