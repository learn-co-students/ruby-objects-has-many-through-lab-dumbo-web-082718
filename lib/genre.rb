class Genre

  attr_accessor :name, :artist, :song
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def new_song(name, artist, genre)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      self
    end
  end

  def artists
    songs.map do |song|   #iterate over the genre's collection of songs
      song.artist
    end
  #and collects the artist that owns the songs
  end

end
