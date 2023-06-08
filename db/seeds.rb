# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying everything"

User.destroy_all
Owner.destroy_all
Trip.destroy_all
TripActivity.destroy_all
Review.destroy_all
Activity.destroy_all

puts "Creating owners and Users"

User.create!(firstname: "Etienne", lastname: "Le Guay", email: "etn@icloud.com", password: "Snake.03", username: "etnlg")
User.create!(firstname: "Florian", lastname: "Autrcihe", email: "flo@icloud.com", password: "Snake.03", username: "flo")
Owner.create!(firstname: "William", lastname: "Chang", email: "willy@icloud.com", password: "Snake.03", username: "willy")
Owner.create!(firstname: "Danella", lastname: "famille", email: "dan@icloud.com", password: "Snake.03", username: "Dan")

puts "Creating trips"

@barca = Trip.new(destination: "Barcelona", start_date: Date.new(2023,07,3), end_date: Date.new(2023, 07, 10), user_id: User.all.sample.id)
@barca.save!
@paris = Trip.new(destination: "Paris", start_date: Date.new(2023,05,20), end_date: Date.new(2023, 05, 27), user_id: User.all.sample.id)
@paris.save!
@menorca = Trip.new(destination: "Menorca", start_date: Date.new(2023, 8,3), end_date: Date.new(2023, 8, 10), user_id: User.all.sample.id)
@menorca.save!
@aix = Trip.new(destination: "Aix-en-provence", start_date: Date.new(2023, 8, 15), end_date: Date.new(2023, 8, 22), user_id: User.all.sample.id)
@aix.save!
@biarritz = Trip.new(destination: "Biarritz", start_date: Date.new(2023, 6, 3), end_date: Date.new(2023, 6, 10), user_id: User.all.sample.id)
@biarritz.save!
@madrid = Trip.new(destination: "Madrid", start_date: Date.new(2023, 6, 15), end_date: Date.new(2023, 6, 22), user_id: User.all.sample.id)
@madrid.save!
@marseille = Trip.new(destination: "Marseille", start_date: Date.new(2023, 6, 23), end_date: Date.new(2023, 6, 29), user_id: User.all.sample.id)
@marseille.save!

puts "Creating activities"

image = Rails.root.join("app", "assets", "images", "diving.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Diving between the continents", description: "Silfra is a fissure between
  the North American and Eurasian tectonic plates in Thingvellir National Park.
  Immerse yourself in the clearest water in the world and float between two continents in Iceland! A snorkeling adventure
  in the famous Silfra fissure is an unforgettable experience, there is a reason this Snorkeling Tour was awarded 5th
   place on the Best of the Best Traveler's choice award of 2022 by Tripadvisor as well as being Tripadvisor's No 4
   experience in the world in 2019!", location: "Silfra, Iceland", price: 199)
activity.photo.attach(io: file, filename: "diving.jpg", content_type: "image/jpg")
activity.save!

image = Rails.root.join("app", "assets", "images", "snowmobile1.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: " Snowmobile tour on Langjokull Glacier", description: "Hop on
  a snowmobile and go on an exhilarating ride on the snowy slopes.
  You'll be talking about your adventure on Iceland's second largest glacier for years to come! Welcome to the wintry
  world of glaciers in Iceland!", location: "Skjol, Iceland", price: 250)
activity.photo.attach(io: file, filename: "snowmobile1.jpg", content_type: "image/jpg")
activity.save!

image = Rails.root.join("app", "assets", "images", "horse.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Horse riding next to a volcano", description: "Saddle up
  discover the unique volcanic landscape at the outskirts of
  Reykjavík on the back of a horse. Ride around the countryside and get to know the friendly Icelandic horse on this
  exciting tour", location: "Reykjavík, Iceland", price: 150)
activity.photo.attach(io: file, filename: "horse.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "baobab1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "baobab2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "baobab3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Walking in the world oldest forest", description: "The Baobab tree,
  also known as the Tree of life, is one of the oldest trees in the world. You will have the chance to walk in the same footsteps
  as our ancestors and relive more than 2000 years of history while seeing lemurians hoping amongs trees",
  location: "Baobab Avenue, Madagascar", price: 100)
activity.photo.attach(io: file1, filename: "baobab1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "baobab2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "baobab3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "snorkel1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "snorkel2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "snorkel3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Snorkeling among sea puppies", description: "Snorkel in the clearest water in
  the world amongs more than 500 friendly creatures and corals. All the equipments and underwater camera included in the excursion",
  location: "Nosy Be, Madagascar", price: 200)
activity.photo.attach(io: file1, filename: "snorkel1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "snorkel2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "snorkel3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "tsingy1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "tsingy2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "tsingy3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Rock climbing in the Rock Forest of Tsingy", description: "Rock climbing
  in the famous Rock Forest of Tsingy. These rocks were formed during the prehistorical era and you will have the chance to visit
  Indiana Jones set and feel like a holiday star! From climbing to ziplining, this activity is not for the faint of heart.",
  location: "Tsingy National Park, Madagascar", price: 200)
activity.photo.attach(io: file1, filename: "tsingy1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "tsingy2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "tsingy3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "diving1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "diving2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "diving3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Diving in the unknown", description: "Dive in the depth of Madagascar, where
  you will encounter underwater species that only live in this area.",
  location: "Nosy Be, Madagascar", price: 300)
activity.photo.attach(io: file1, filename: "diving1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "diving2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "diving3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "wingsuit1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "wingsuit2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "wingsuit3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Jumping off Maramokotro mountain", description: "Hike to the top of
  Maramokotro mountain. The journey will take approximately 3 hours. Halfway in the journey, we will do a pitstop where you would
    taste local food and then resume your journey to the top where a wingsuit will be provided to you. The only thing left, is to jump
    off and fly!",
  location: "Maramokotro, Madagascar", price: 600)
activity.photo.attach(io: file1, filename: "wingsuit1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "wingsuit2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "wingsuit3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "para1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "para2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "para3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Paragliding off Andringitra mountains", description: "For adrenaline seeker,
  we will go up Andringitra mountains. A very remote area with a spetacular valley and unforgettable landscape, a flat and clear,
  broad bottom of valley without any electrical line, nor road, facing Tsaranoro cliffs with a dropof more than 800 meters!",
  location: "Andringitra, Madagascar", price: 600)
activity.photo.attach(io: file1, filename: "para1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "para2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "para3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "bike1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "bike2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "bike3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Mountain biking down a volcano", description: "Going down a mountain sounds
  exciting? How about going down an active volcano? Even better, if you are able to beat the time of world renowned Travis Pastrana,
  this activity will be on the house! Bike, protection equipment and helicopter airlift included.",
  location: "Morafenobe, Madagascar", price: 1500)
activity.photo.attach(io: file1, filename: "bike1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "bike2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "bike3.jpg", content_type: "image/jpg")
activity.save!


image1 = Rails.root.join("app", "assets", "images", "madagascar", "cave1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "cave2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "cave3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Caving with crocodiles", description: "If you are slightly bored with
  resort idyll, a visit to the Crocodile Caves located underground in Ankarana National Park will be truly
  refreshing. This large underground network of caves and rivers is a home to 14 species of squealing bats, giant eels,
  endemic blind shrimps and crocodiles. Rock spires and dropping water contribute to the scary atmosphere. There is only
  one way in and one way out.", location: "Morafenobe, Madagascar", price: 1200)
activity.photo.attach(io: file1, filename: "cave1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "cave2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "cave3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "canyon1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "canyon2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "canyon3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Canyoning in Madagascar", description: "This activity combines
  hiking, swimming, jumping, abseiling, and sliding through narrow canyon spaces. It is nothing but fun and it is
  enjoyed by people of all ages and skill levels", location: "Morafenobe, Madagascar", price: 250)
activity.photo.attach(io: file1, filename: "canyon1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "canyon2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "canyon3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "madagascar", "hiking1.jpg")
image2 = Rails.root.join("app", "assets", "images", "madagascar", "hiking2.jpg")
image3 = Rails.root.join("app", "assets", "images", "madagascar", "hiking3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Hiking in Isalo National Park", description: "Madagascar's
  most popular nature destination, Isalo National Park, lies amidst the Jurassic-era highlands of the country's southwest.
  Established in 1962, it protects over 190,000 acres of land dominated by a dramatic sandstone massif that has been
  eroded by time and weather into an otherworldly collection of plateaus, canyons, gorges, and pinnacles",
  location: "Isalo National Park, Madagascar", price: 100)
activity.photo.attach(io: file1, filename: "hiking1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "hiking2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "hiking3.jpg", content_type: "image/jpg")
activity.save!

puts "Done"
