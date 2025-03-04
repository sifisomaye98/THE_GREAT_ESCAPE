puts "Cleaning database"
User.destroy_all
Country.destroy_all

puts "creating users..."
User.create!(first_name: "Jupiter", last_name: "Storm", email: "jupiter.storm@example.com", password: "password123")
User.create!(first_name: "Nova", last_name: "Haven", email: "nova.haven@example.com", password: "password123")
User.create!(first_name: "Orion", last_name: "Frost", email: "orion.frost@example.com", password: "password123")
User.create!(first_name: "Zara", last_name: "Rune", email: "zara.rune@example.com", password: "password123")
User.create!(first_name: "Phoenix", last_name: "Knight", email: "phoenix.knight@example.com", password: "password123")
User.create!(first_name: "Axel", last_name: "Blaze", email: "axel.blaze@example.com", password: "password123")
User.create!(first_name: "Luna", last_name: "Shade", email: "luna.shade@example.com", password: "password123")
User.create!(first_name: "Ryder", last_name: "Fox", email: "ryder.fox@example.com", password: "password123")
User.create!(first_name: "Sable", last_name: "Hawk", email: "sable.hawk@example.com", password: "password123")
User.create!(first_name: "Indigo", last_name: "Skye", email: "indigo.skye@example.com", password: "password123")
User.create!(first_name: "Bongi", last_name: "N", email: "email@example.com", password: "password123")

puts "#{User.count} cool and quirky users!"

puts "creating countries..."
Country.create!(
  name: "Japan",
  description: "A land of futuristic cities and ancient temples, where cherry blossoms and high-tech coexist harmoniously.",
  image_url: "https://source.unsplash.com/featured/300x200?japan"
)

Country.create!(
  name: "Iceland",
  description: "A mystical land of geysers, glaciers, and midnight sun, where elves and trolls might just exist.",
  image_url: "https://source.unsplash.com/featured/300x200?iceland"
)

Country.create!(
  name: "Italy",
  description: "Home to the Renaissance, pasta, and picturesque villages—where every street feels like a movie set.",
  image_url: "https://source.unsplash.com/featured/300x200?italy"
)

Country.create!(
  name: "New Zealand",
  description: "A paradise for adventurers with its fjords, volcanoes, and the real-life Middle-earth landscapes.",
  image_url: "https://source.unsplash.com/featured/300x200?new-zealand"
)

Country.create!(
  name: "Morocco",
  description: "A sensory delight of spice markets, desert dunes, and vibrant blue cities.",
  image_url: "https://source.unsplash.com/featured/300x200?morocco"
)

Country.create!(
  name: "Brazil",
  description: "Where rainforests pulse with life and samba rhythms fill the streets of Rio.",
  image_url: "https://source.unsplash.com/featured/300x200?brazil"
)

Country.create!(
  name: "Norway",
  description: "A kingdom of fjords and northern lights, where Viking history meets modern design.",
  image_url: "https://source.unsplash.com/featured/300x200?norway"
)

Country.create!(
  name: "Greece",
  description: "Sun-soaked islands and ancient ruins, where mythology and reality blur beautifully.",
  image_url: "https://source.unsplash.com/featured/300x200?greece"
)

Country.create!(
  name: "Vietnam",
  description: "A land of emerald rice terraces, bustling markets, and unforgettable street food.",
  image_url: "https://source.unsplash.com/featured/300x200?vietnam"
)

Country.create!(
  name: "Canada",
  description: "Epic national parks, maple syrup, and cities that balance wilderness with culture.",
  image_url: "https://source.unsplash.com/featured/300x200?canada"
)

puts "🌱 Seeded #{Country.count} countries with fun descriptions"
