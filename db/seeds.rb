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

image1 = Rails.root.join("app", "assets", "images", "iceland", "diving.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "diving2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "diving3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Diving between the continents", description: "Silfra is a fissure between
  the North American and Eurasian tectonic plates in Thingvellir National Park.
  Immerse yourself in the clearest water in the world and float between two continents in Iceland! A snorkeling adventure
  in the famous Silfra fissure is an unforgettable experience, there is a reason this Snorkeling Tour was awarded 5th
   place on the Best of the Best Traveler's choice award of 2022 by Tripadvisor as well as being Tripadvisor's No 4
   experience in the world in 2019!", location: "Silfra, Iceland", price: 199)
activity.photo.attach(io: file1, filename: "diving.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "diving2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "diving3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "iceland", "snowmobile1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "snowmobile2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "snowmobile3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: " Snowmobile tour on Langjokull Glacier", description: "Hop on
  a snowmobile and go on an exhilarating ride on the snowy slopes.
  You'll be talking about your adventure on Iceland's second largest glacier for years to come! Welcome to the wintry
  world of glaciers in Iceland!", location: "Skjol, Iceland", price: 250)
activity.photo.attach(io: file1, filename: "snowmobile1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "snowmobile2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "snowmobile3.jpg", content_type: "image/jpg")
activity.save!




image1 = Rails.root.join("app", "assets", "images", "iceland", "horse.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "horse2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "horse3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Horse riding next to a volcano", description: "Saddle up and

  discover the unique volcanic landscape at the outskirts of
  Reykjavík on the back of a horse. Ride around the countryside and get to know the friendly Icelandic horse on this
  exciting tour", location: "Reykjavik, Iceland", price: 150)
activity.photo.attach(io: file1, filename: "horse.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "horse2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "horse3.jpg", content_type: "image/jpg")
activity.save!



image1 = Rails.root.join("app", "assets", "images", "ethiopie", "swim1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "swim2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "swim3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Swimming in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Djibouti, Ethiopie", price: 200)
activity.photo.attach(io: file1, filename: "swim1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "swim2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "swim3.jpg", content_type: "image/jpg")
activity.save!


image1 = Rails.root.join("app", "assets", "images", "iceland", "quad1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "quad2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "quad3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Quad tour", description: "This is an opportunity like no other
   to escape the hustle and bustle of city life and immerse yourself in Iceland's stunning natural beauty. Our ATV tour
   is designed for riders of all abilities, and you'll have a blast exploring rugged trails, picturesque routes along
   Lake Hafravatn, and a variety of terrains. The highlight of this tour is the ascent to the Reykjavik Peak mountain,
   where you'll be rewarded with breathtaking views of Iceland's third most active volcanic system, the Hengill mountain
   range, and the Hellisheiði geothermal power plant that provides energy to the capital. From this vantage point, you'll
   witness the beauty of Faxaflói bay, the entire capital region, the Bláfjöll mountain range, and the iconic Esja..
  Don't miss out on this once-in-a-lifetime experience to see Reykjavik from a whole new perspective.",
   location: "Reykjavik, Iceland", price: 189)
activity.photo.attach(io: file1, filename: "quad1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "quad2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "quad3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "iceland", "glacier1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "glacier2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "glacier3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Glacier tour", description: "This five-and-a-half-hour glacier
  hiking tour will take you to the magnificent Falljökull glacier. Falljokull is an outlet glacier from Vatnajokull,
   the largest glacier in Europe and the King of natural ice sculptures. As you hike around this magical ice setting,
   you will get all the information about this enchanting place from your friendly and knowledgeable guide, taking you
   to all the best spots to deeply enjoy the glacier.",
   location: "Hof, Iceland", price: 143)
activity.photo.attach(io: file1, filename: "glacier1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "glacier2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "glacier3.jpg", content_type: "image/jpg")
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


image1 = Rails.root.join("app", "assets", "images", "iceland", "dog1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "dog2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "dog3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Dog Sledding", description: "Dog sledding can be done year round,
  although you will only go dog sledding on a glacier during the summertime.
  In winter, the weather on the glaciers can be too harsh so the dogs are kept on the South Coast of Iceland where the
  weather is milder, so there's actually not a guarantee that you will go dog sledding on snow during wintertime—but
  it's guaranteed during summer!
  Dog sledding is a fun activity for all ages, and kids as young as 2 years old can go on the dog sleds. You also get
   plenty of time to fuss over the cute and fun dogs, in amidst travelling in a beautiful landscape in style. ",
   location: "Reykjavik, Iceland", price: 177)
activity.photo.attach(io: file1, filename: "dog1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "dog2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "dog3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "iceland", "surf1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "surf2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "surf3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Surfing in Iceland", description: "Surfing in Iceland is not only
  for hardcore surfers but for anyone looking for something a little different during their stay. Although the waves can
     be big and the sea is ice cold, surfing here presents some unique benefits, such as incredible surroundings, endurance
     training and some fantastic surf breaks. Without a doubt, the best time to go surfing in Iceland is between October and
     March, when most of the country is battered by rain, storms and strong winds. Of course, strong winds means strong waves
     along the coastlines, thus a better and more challenging experience.
     The majority of surfing in Iceland is done off the moon-like landscapes of the Reykjanes Peninsula, home to such
     attractions as Lake Kleifarvatn and the Bridge Between the Continents.    ",
   location: "Garour, Iceland", price: 100)
activity.photo.attach(io: file1, filename: "surf1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "surf2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "surf3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "iceland", "bike1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "bike2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "bike3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Mountain biking in Iceland", description: "Everyone loves a cyclist.
   Pedalling away on their two-wheelers, this interesting breed of sportsman has long found Iceland to be particularly suited
   to cycling; the roads are long, scenic and hold little traffic, and most of the major attractions can be accessed from
   the island's Ring Road.
  This has allowed cyclists to merge their passion with traditional sightseeing, extending the process over a number of
  days in order to allow passage from destination to the next. ",
   location: "Hengill, Iceland", price: 130)
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

image1 = Rails.root.join("app", "assets", "images", "iceland", "volcano1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "volcano2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "volcano3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Volcano Tour", description: "Although infinitely more exciting when
  they are erupting, this tour inside a volcano is still a pretty impressive caving tour available in the summertime.
   Fear not, you won't see any flowing magma, but instead, a dazzling caldera made up colourful inner rock faces.

  Volcano tours provide a fascinating insight into the geothermally active nature of Iceland's landscape, as well as
   presenting one of the more unique activities on earth—actually being inside a volcano!  ",
   location: "Grindavik, Iceland", price: 145)
activity.photo.attach(io: file1, filename: "volcano1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "volcano2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "volcano3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "iceland", "ski1.jpg")
image2 = Rails.root.join("app", "assets", "images", "iceland", "ski2.jpg")
image3 = Rails.root.join("app", "assets", "images", "iceland", "ski3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Heli-skiing and Heli-snowboarding", description: "Heli-skiing
  and Heli-snowboarding are two of the ultimate extreme sports you can experience in Iceland. They are also one of the
   priciest, unfortunately, but then again, whenever did something so spectacular come cheap?

  Heli-skiing and Heli-snowboarding are, quite obviously, more extreme than their usual counterpart, meaning that a
  higher level of experience and skill is required in order to participate in this type of tour. For those who fit the
  description, you will have the rare opportunity to ski/snowboard from the summit of a mountain all way down to the
   coastlines of the Atlantic. Nothing beats the feeling of skiing or snowboarding down a steep hill with fresh powder.
   Such an experience is only complimented by being the only one on the slope. Not to mention when you have breathtaking
   views all the way down and get to fly around in a helicopter on your way up.",
   location: "Dalvik, Iceland", price: 200)
activity.photo.attach(io: file1, filename: "ski1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "ski2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "ski3.jpg", content_type: "image/jpg")
activity.save!






puts "Done"
