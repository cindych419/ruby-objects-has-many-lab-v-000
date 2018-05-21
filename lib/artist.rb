class Artist

  attr_accessor :name

@@songs_count = []

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

def song_count
  @@songs_count << @songs
  @@songs_count.count
end

end
