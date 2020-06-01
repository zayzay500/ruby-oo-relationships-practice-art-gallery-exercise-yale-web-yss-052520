class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum {|painting| painting.price}
  end

end
