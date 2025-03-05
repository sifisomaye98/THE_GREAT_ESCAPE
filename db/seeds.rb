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
  image_url: "https://images.unsplash.com/photo-1542051841857-5f90071e7989?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1000,
  user: jupiter

)

Country.create!(
  name: "Iceland",
  description: "A mystical land of geysers, glaciers, and midnight sun, where elves and trolls might just exist.",
  image_url: "https://images.unsplash.com/photo-1500043357865-c6b8827edf10?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  initial_price: 1000,
  user: nova
)

Country.create!(
  name: "Italy",
  description: "Home to the Renaissance, pasta, and picturesque villages—where every street feels like a movie set.",
  image_url: "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: jupiter
)

Country.create!(
  name: "New Zealand",
  description: "A paradise for adventurers with its fjords, volcanoes, and the real-life Middle-earth landscapes.",
  image_url: "https://images.pexels.com/photos/37650/new-zealand-lake-mountain-landscape-37650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: jupiter
)


Country.create!(
  name: "Morocco",
  description: "A sensory delight of spice markets, desert dunes, and vibrant blue cities.",
  image_url: "https://images.pexels.com/photos/943533/pexels-photo-943533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Brazil",
  description: "Where rainforests pulse with life and samba rhythms fill the streets of Rio.",
  image_url: "https://images.pexels.com/photos/351283/pexels-photo-351283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: orion
)

Country.create!(
  name: "Norway",
  description: "A kingdom of fjords and northern lights, where Viking history meets modern design.",
  image_url: "https://images.pexels.com/photos/1933239/pexels-photo-1933239.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Greece",
  description: "Sun-soaked islands and ancient ruins, where mythology and reality blur beautifully.",
  image_url: "https://images.pexels.com/photos/1285625/pexels-photo-1285625.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Vietnam",
  description: "A land of emerald rice terraces, bustling markets, and unforgettable street food.",
  image_url: "https://images.pexels.com/photos/1004122/pexels-photo-1004122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  initial_price: 1000,
  user: zara
)

Country.create!(
  name: "Canada",
  description: "Epic national parks, maple syrup, and cities that balance wilderness with culture.",
  image_url: "https://images.unsplash.com/photo-1599679033152-4a64935eb332?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2FuYWRhJTIwcGxhY2V8ZW58MHx8MHx8fDA%3D",
  initial_price: 1000,
  user: zara
)

puts "🌱 Seeded #{Country.count} countries with fun descriptions"
