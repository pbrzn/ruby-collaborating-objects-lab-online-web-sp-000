require 'pry'

class Song
  attr_accessor :artist, :name
  @@all=[]
  def initialize(name)
    @name=name
    @artist=artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song=Song.new(filename.split(" - ")[1])
    song.artist_name=(filename.split(" - ")[0])
    song
  end
  
  def artist_name=(name)
    #binding.pry
    if self.artist == nil
     self.artist = Artist.new(name)
    else
      self.artist.name=name
    end
    self.artist.name
  end
end