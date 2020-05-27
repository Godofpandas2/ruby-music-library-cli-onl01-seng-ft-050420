class Song
  attr_accessor :name

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist = artist if artist != nil
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    nam = Song.new(name)
    nam.save
    nam
  end
end
