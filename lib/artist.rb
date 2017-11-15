class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # self.save
  end

  # def name=(name)
  #   @name = name
  # end

  def add_song(song)
      self.songs << song.name
      #song.artist=(self)
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if !(@@all.detect {|artist| artist.name == artist_name})
        artist = self.new(artist_name)
        artist.save
        artist
      else
        #how to add that song
        #artist.add_song()
        #self.add_song()

      end
  end

  def print_songs
    self.songs.collect do |song|
      puts song.name.to_s
    end
  end

end
