puts "Cleaning database"
Country.destroy_all
Rental.destroy_all
User.destroy_all

puts "creating users..."
jupiter = User.create!(first_name: "Jupiter", last_name: "Storm", email: "jupiter.storm@example.com", password: "password123")
nova = User.create!(first_name: "Nova", last_name: "Haven", email: "nova.haven@example.com", password: "password123")
orion = User.create!(first_name: "Orion", last_name: "Frost", email: "orion.frost@example.com", password: "password123")
zara = User.create!(first_name: "Zara", last_name: "Rune", email: "zara.rune@example.com", password: "password123")
phoenix = User.create!(first_name: "Phoenix", last_name: "Knight", email: "phoenix.knight@example.com", password: "password123")


puts "#{User.count} cool and quirky users!"

puts "creating countries..."
Country.create!(
  name: "Japan",
  description: "A land of futuristic cities and ancient temples, where cherry blossoms and high-tech coexist harmoniously.",
  image_url: "https://source.unsplash.com/featured/300x200?japan",
  initial_price: 1000,
  user: jupiter
)

Country.create!(
  name: "Iceland",
  description: "A mystical land of geysers, glaciers, and midnight sun, where elves and trolls might just exist.",
  image_url: "https://source.unsplash.com/featured/300x200?iceland",
  initial_price: 1000,
  user: nova
)

Country.create!(
  name: "Italy",
  description: "Home to the Renaissance, pasta, and picturesque villages—where every street feels like a movie set.",
  image_url: "https://source.unsplash.com/featured/300x200?italy",
  initial_price: 1000,
  user: jupiter
)

Country.create!(
  name: "New Zealand",
  description: "A paradise for adventurers with its fjords, volcanoes, and the real-life Middle-earth landscapes.",
  image_url: "https://source.unsplash.com/featured/300x200?new-zealand",
  initial_price: 1000,
  user: jupiter
)


Country.create!(
  name: "Morocco",
  description: "A sensory delight of spice markets, desert dunes, and vibrant blue cities.",
  image_url: "https://source.unsplash.com/featured/300x200?morocco",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Brazil",
  description: "Where rainforests pulse with life and samba rhythms fill the streets of Rio.",
  image_url: "https://source.unsplash.com/featured/300x200?brazil",
  initial_price: 1000,
  user: orion
)

Country.create!(
  name: "Norway",
  description: "A kingdom of fjords and northern lights, where Viking history meets modern design.",
  image_url: "https://source.unsplash.com/featured/300x200?norway",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Greece",
  description: "Sun-soaked islands and ancient ruins, where mythology and reality blur beautifully.",
  image_url: "https://source.unsplash.com/featured/300x200?greece",
  initial_price: 1000,
  user: zara
)

puts "🌱 Seeded #{Country.count} countries with fun descriptions"
