# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying everything"

TripActivity.destroy_all
User.destroy_all
Owner.destroy_all
Trip.destroy_all
Review.destroy_all
Activity.destroy_all

puts "Creating owners and Users"

User.create!(firstname: "Etienne", lastname: "Le Guay", email: "etn@icloud.com", password: "SeedSeed", username: "etnlg")
User.create!(firstname: "Florian", lastname: "Autrcihe", email: "flo@icloud.com", password: "SeedSeed", username: "flo")
Owner.create!(firstname: "William", lastname: "Chang", email: "willy@icloud.com", password: "SeedSeed", username: "willy")
Owner.create!(firstname: "Danella", lastname: "famille", email: "dan@icloud.com", password: "SeedSeed", username: "Dan")

puts "Creating trips"

@barca = Trip.new(destination: "Barcelona", start_date: Date.new(2023,07,3), end_date: Date.new(2023, 07, 10), user_id: User.find_by(username: "etnlg").id)
@barca.save!
@paris = Trip.new(destination: "Paris", start_date: Date.new(2023,05,20), end_date: Date.new(2023, 05, 27), user_id: User.all.sample.id)
@paris.save!
@menorca = Trip.new(destination: "Menorca", start_date: Date.new(2023, 8,3), end_date: Date.new(2023, 8, 10), user_id: User.find_by(username: "etnlg").id)
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

image = Rails.root.join("app", "assets", "images", "fullscreen_xoroi_diurno.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Explore the Cova d'en Xoroi", description: "Venture into the captivating Cova d'en Xoroi, a natural cave located in the cliffs with stunning views over the Mediterranean. By day, it's a unique place to enjoy a drink while looking out to sea. At night, the cave transforms into a nightclub, offering an unparalleled experience.",
  location: "Cova d'en Xoroi, Menorca",
  price: 20)
activity.photo.attach(io: file, filename: "fullscreen_xoroi_diurno.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "naveta-des-tudons.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Tour the Naveta d'es Tudons", description: "Discover the Naveta d'es Tudons, the most well-preserved burial structure in the Balearic Islands. This prehistoric monument offers a unique glimpse into Menorca's distant past and is a must-see for history enthusiasts.",
location: "Naveta d'es Tudons, Menorca",
price: 10)
activity.photo.attach(io: file, filename: "naveta-des-tudons.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "20181011-095110-largejpg.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Hike the Cami de Cavalls", description: "Embark on an adventure along the Cami de Cavalls, a trail that encircles the island. Offering stunning views of the coastline, this trail allows you to experience the island's diverse landscapes. Whether you take on a small section or the entire path, this is a must for outdoor enthusiasts.",
location: "Cami de Cavalls, Menorca",
price: 0)
activity.photo.attach(io: file, filename: "20181011-095110-largejpg.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "home-06-menorca-a-cavall.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Menorca Horse Riding", description: "Experience the beauty of Menorca on horseback. Riding along the Cami de Cavalls or through the island's stunning interior, you'll have the chance to see Menorca from a unique perspective. Suitable for all ages and skill levels.",
location: "Son bou, Menorca",
price: 60)
activity.photo.attach(io: file, filename: "home-06-menorca-a-cavall.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "menorca_kayak_pont_ali.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Kayaking in Cala Galdana", description: "Immerse yourself in the crystal clear waters of Cala Galdana by kayak. Explore the spectacular coastline, discovering hidden beaches and caves. This is a perfect activity for both beginners and experienced paddlers.",
location: "Cala Galdana, Menorca",
price: 35)
activity.photo.attach(io: file, filename: "menorca_kayak_pont_ali.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "torre-fornells.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.first.id, name: "Visit the Fornells Tower", description: "Explore the Fornells Tower, an 18th-century defense tower built to guard against Turkish invasions. Climb to the top for a panoramic view of the surrounding coastline.",
location: "Fornells Tower, Menorca",
price: 4)
activity.photo.attach(io: file, filename: "torre-fornells.jpg", content_type: "image/jpg")
activity.save!

image = Rails.root.join("app", "assets", "images", "img-20180604-000427-706.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Binibeca Vell Visit", description: "Wander the quaint, whitewashed streets of Binibeca Vell, a charming fishing village on Menorca's south coast. It's a quiet, picturesque place that's perfect for a leisurely stroll.",
location: "Binibeca Vell, Menorca",
price: 0)
activity.photo.attach(io: file, filename: "img-20180604-000427-706.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "Scuba-diver.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Scuba Scuba-diver in Menorca", description: "Dive into the clear waters of Menorca and discover a world of marine life. Whether you're a beginner or an experienced diver, you'll find an underwater adventure that's perfect for you.",
location: "Binibeca, Menorca",
price: 70)
activity.photo.attach(io: file, filename: "Scuba-diver.jpg", content_type: "image/jpg")
activity.save!


image = Rails.root.join("app", "assets", "images", "SUPing_masthead.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Stand Up Paddleboarding (SUP)", description: "Experience the coast of Menorca from a stand-up paddleboard. Glide over the crystal-clear waters, explore secluded beaches, and enjoy the tranquillity of the sea.",
location: "Cala en Bosc, Menoca",
price: 30)
activity.photo.attach(io: file, filename: "SUPing_masthead.jpg", content_type: "image/jpg")
activity.save!

image = Rails.root.join("app", "assets", "images", "1567092107_spacerimg.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
activity = Activity.new(owner_id: Owner.last.id, name: "Visit Taula de Torralba", description: "Explore the Taula de Torralba, a prehistoric monument unique to Menorca. This ancient T-shaped stone monument is a fascinating piece of the island's history.",
location: "Taula de Torralba, Menorca",
price: 30)
activity.photo.attach(io: file, filename: "1567092107_spacerimg.jpg", content_type: "image/jpg")
activity.save!

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
activity = Activity.new(owner_id: Owner.last.id, name: "Horse riding next to a volcano", description: "Saddle up and
  discover the unique volcanic landscape at the outskirts of
  Reykjavík on the back of a horse. Ride around the countryside and get to know the friendly Icelandic horse on this
  exciting tour", location: "Reykjavík, Iceland", price: 150)
activity.photo.attach(io: file, filename: "horse.jpg", content_type: "image/jpg")
activity.save!

puts "Done"
