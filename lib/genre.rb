class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    # Iterate through the list of songs
    # And then return the songs that match
    # the genre.
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # Iterate through all the songs
    # And then return the songs that match the artist
    Song.all.select do |song|
      song.genre == self
    end.map do |song|
      song.artist
    end
  end
  




end
