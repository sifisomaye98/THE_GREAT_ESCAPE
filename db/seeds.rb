require "open-uri"
puts "Cleaning database..."
# Delete in the right order to avoid foreign key conflicts
Rental.destroy_all
Country.destroy_all
User.destroy_all

puts "Creating users..."
jupiter = User.create!(first_name: "Jupiter", last_name: "Storm", email: "jupitero@example.com", password: "password123")
nova = User.create!(first_name: "Nova", last_name: "Haven", email: "nova.haven@example.com", password: "password123")
orion = User.create!(first_name: "Orion", last_name: "Frost", email: "orion.frost@example.com", password: "password123")
zara = User.create!(first_name: "Zara", last_name: "Rune", email: "zara.rune@example.com", password: "password123")
phoenix = User.create!(first_name: "Phoenix", last_name: "Knight", email: "phoenix.knight@example.com", password: "password123")

puts "#{User.count} users created!"

puts "Creating countries..."
japan = Country.create!(
  name: "Japan",
  description: "A land of futuristic cities and ancient temples.",
  image_url: "https://images.unsplash.com/photo-1542051841857-5f90071e7989",
  initial_price: 1000,
  user: jupiter
)
p japan
file = URI.parse("https://images.unsplash.com/photo-1542051841857-5f90071e7989").open
japan.photo.attach(io: file, filename: "#{japan.name}_image.png", content_type: "image/png")
japan.save


iceland = Country.create!(
  name: "Iceland",
  description: "A mystical land of geysers and glaciers.",
  image_url: "https://images.unsplash.com/photo-1500043357865-c6b8827edf10",
  initial_price: 1200,
  user: nova
)
p iceland
file = URI.parse(iceland.image_url).open
iceland.photo.attach(io: file, filename: "#{iceland.name}_image.png", content_type: "image/png")
iceland.save

italy = Country.create!(
  name: "Italy",
  description: "Home to the Renaissance and picturesque villages.",
  image_url: "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg",
  initial_price: 1500,
  user: jupiter
)
file = URI.parse(italy.image_url).open
italy.photo.attach(io: file, filename: "#{italy.name}_image.png", content_type: "image/png")
italy.save
p italy

brazil = Country.create!(
  name: "Brazil",
  description: "Where rainforests pulse with life.",
  image_url: "https://images.pexels.com/photos/351283/pexels-photo-351283.jpeg",
  initial_price: 1100,
  user: orion
)
file = URI.parse(brazil.image_url).open
brazil.photo.attach(io: file, filename: "#{brazil.name}_image.png", content_type: "image/png")
brazil.save
p brazil

canada = Country.create!(
  name: "Canada",
  description: "Land of the maple leaf and stunning wilderness.",
  image_url: "https://images.unsplash.com/photo-1508693926297-1d61ee3df82a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1300,
  user: nova
)
# p canada.image_url
file = URI.parse(canada.image_url).open
canada.photo.attach(io: file, filename: "#{canada.name}_image.png", content_type: "image/png")
canada.save
p canada

australia = Country.create!(
  name: "Australia",
  description: "Golden beaches and vast deserts.",
  image_url: "https://images.unsplash.com/photo-1624138784614-87fd1b6528f8?q=80&w=2833&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1400,
  user: phoenix
)
file = URI.parse(australia.image_url).open
australia.photo.attach(io: file, filename: "#{australia.name}_image.png", content_type: "image/png")
australia.save
p australia

egypt = Country.create!(
  name: "Egypt",
  description: "Land of the Pharaohs and the great pyramids.",
  image_url: "https://images.unsplash.com/photo-1629468855534-450d7c4c5f72?q=80&w=2252&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1250,
  user: zara
)
file = URI.parse(egypt.image_url).open
egypt.photo.attach(io: file, filename: "#{egypt.name}_image.png", content_type: "image/png")
egypt.save
p egypt

greece = Country.create!(
  name: "Greece",
  description: "White-washed villages overlooking the Aegean Sea.",
  image_url: "https://images.unsplash.com/photo-1587975844577-56dfe5d3fca8?q=80&w=2334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1350,
  user: phoenix
)
file = URI.parse(greece.image_url).open
greece.photo.attach(io: file, filename: "#{greece.name}_image.png", content_type: "image/png")
greece.save
p greece

puts "#{Country.count} countries created!"

puts "Creating rentals..."
Rental.create!(offer_value: 200, user: nova, country: japan, status: :pending)
Rental.create!(offer_value: 300, user: orion, country: iceland, status: :pending)
Rental.create!(offer_value: 250, user: zara, country: italy, status: :pending)
Rental.create!(offer_value: 350, user: phoenix, country: brazil, status: :pending)
Rental.create!(offer_value: 400, user: jupiter, country: canada, status: :pending)
Rental.create!(offer_value: 375, user: nova, country: australia, status: :pending)
Rental.create!(offer_value: 280, user: orion, country: egypt, status: :pending)
Rental.create!(offer_value: 320, user: zara, country: greece, status: :pending)

puts "#{Rental.count} rentals created!"
puts "🌱 Seeding complete!"
