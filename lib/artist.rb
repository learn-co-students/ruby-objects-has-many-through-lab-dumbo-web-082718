class Artist

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
    # Iterate through all the songs
    # And select songs that match the artist
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def genres
    # Iterate through all the songs
    # And select the songs that match
    # the Artist
    # And then, iterate through those
    # songs and return
    # their genre.
    Song.all.select do |song|
      song.artist == self
    end.map do |song|
      song.genre
    end
  end




end
