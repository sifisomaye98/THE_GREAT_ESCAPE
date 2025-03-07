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

iceland = Country.create!(
  name: "Iceland",
  description: "A mystical land of geysers and glaciers.",
  image_url: "https://images.unsplash.com/photo-1500043357865-c6b8827edf10",
  initial_price: 1200,
  user: nova
)

italy = Country.create!(
  name: "Italy",
  description: "Home to the Renaissance and picturesque villages.",
  image_url: "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg",
  initial_price: 1500,
  user: jupiter
)

brazil = Country.create!(
  name: "Brazil",
  description: "Where rainforests pulse with life.",
  image_url: "https://images.pexels.com/photos/351283/pexels-photo-351283.jpeg",
  initial_price: 1100,
  user: orion
)

canada = Country.create!(
  name: "Canada",
  description: "Land of the maple leaf and stunning wilderness.",
  image_url: "https://images.unsplash.com/photo-1529981603443-1b88c9c848aa",
  initial_price: 1300,
  user: nova
)

australia = Country.create!(
  name: "Australia",
  description: "Golden beaches and vast deserts.",
  image_url: "https://images.unsplash.com/photo-1585801227492-07eb59204c42",
  initial_price: 1400,
  user: phoenix
)

egypt = Country.create!(
  name: "Egypt",
  description: "Land of the Pharaohs and the great pyramids.",
  image_url: "https://images.unsplash.com/photo-1535407339381-232b7d43a67d",
  initial_price: 1250,
  user: zara
)

greece = Country.create!(
  name: "Greece",
  description: "White-washed villages overlooking the Aegean Sea.",
  image_url: "https://images.unsplash.com/photo-1526392060635-9d6019884377",
  initial_price: 1350,
  user: phoenix
)

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
