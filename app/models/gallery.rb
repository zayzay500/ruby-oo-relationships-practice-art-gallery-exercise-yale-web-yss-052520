class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    save
  end

  def save
    self.class.all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    paintings.max {|a,b| a.price <=> b.price}
  end

  def self.all
    @@all
  end

end
