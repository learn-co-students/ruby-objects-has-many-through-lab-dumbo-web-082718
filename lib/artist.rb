require 'pry'
class Artist
  attr_accessor :name
  # has_many :songs
  # has_many :genre, through: :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

    def new_song(name, genre)
      Song.new(name,self, genre)
    end

    def songs
      Song.all.find_all {|song| song.artist == self}
    end

    def genres
      songs.map { |song| song.genre  }
  end

end
