class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    save
  end

  def save
    self.class.all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    self.all.max {|a,b| a.paintings.count / a.years_experience <=> b.paintings.count / a.years_experience}
  end
end
