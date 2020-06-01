require_relative '../config/environment.rb'

picasso = Artist.new("Pablo Picasso", 25)
rando = Artist.new("Anna Brown", 3)

san_fran = Gallery.new("Brink", "San Francisco, CA")

beauty = Painting.new("Beauty", 250, san_fran, rando)
miracle = Painting.new("Miracle", 25000, san_fran, picasso)

binding.pry

puts "Bob Ross rules."
