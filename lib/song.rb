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
    if self.artist == nil
      result = Artist.all.find {|artist| artist.name==name}
      if result == name
        self.artist.name = name
      else
        self.artist = Artist.new(name)
      end
      binding.pry
    end
  end
  
end