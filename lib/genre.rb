class Genre

attr_accessor :name

@@all = []

def self.all
@@all
end


def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, artist)
  song = Song.new(name, artist, self)
  song
end

def songs
  Song.all.select do |song|
    song.genre
  end
end

def artists
  self.songs.map do |song|
    song.artist
  end
end


end #class end
