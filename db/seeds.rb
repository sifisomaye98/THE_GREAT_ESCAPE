puts "Cleaning database..."
# Delete in the right order to avoid foreign key conflicts
Rental.delete_all
Country.delete_all
User.delete_all

puts "Creating users..."
jupiter = User.create!(first_name: "Jupiter", last_name: "Storm", email: "jupiter.storm@example.com", password: "password123")
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

puts "#{Country.count} countries created!"

puts "Creating rentals..."
Rental.create!(offer_value: 200, user: nova, country: japan)
Rental.create!(offer_value: 300, user: orion, country: iceland)
Rental.create!(offer_value: 250, user: zara, country: italy)
Rental.create!(offer_value: 350, user: phoenix, country: brazil)

puts "#{Rental.count} rentals created!"
puts "🌱 Seeding complete!"
