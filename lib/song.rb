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
    result = Artist.all.find {|artist| artist.name==name}
    if result == name
      self.artist.name = name
      self.artist
    else
      new_artist = Artist.new(name)
      self.artist = new_artist
    end
  end
  
end