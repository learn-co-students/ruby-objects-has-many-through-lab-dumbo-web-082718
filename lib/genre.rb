class Genre
  attr_accessor :name
  # has_many :songs
  # has_many :artist, through: :songs

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def Genre.all
    @@all
  end

  def songs
    Song.all{|song| song.genre == self}
  end

  def artists
    songs.map{|song| song.artist }
  end



end
