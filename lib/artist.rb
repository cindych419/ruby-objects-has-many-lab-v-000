require "pry"
class Artist

  attr_accessor :name, :song_count

@@song_count = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
  song.artist = self
end

def songs
  @songs
end

def add_song_by_name(name)
  song = Song.new(name)
  @songs<<song
  song.artist = self
end

#binding.pry
def song_count
  @@song_count << @songs
  @@song_count.count.to_i
end

end
