# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying everything"

Review.destroy_all
Message.destroy_all
Chatroom.destroy_all
TripActivity.destroy_all
User.destroy_all
Owner.destroy_all
Trip.destroy_all

Activity.destroy_all

puts "Creating owners and Users"



User.create!(firstname: "Florian", lastname: "Autriche", email: "flo@icloud.com", password: "111111", username: "flo")
User.create!(firstname: "Vincent", lastname: "Hubert", email: "vincent@icloud.com", password: "111111", username: "Vincent")
User.create!(firstname: "Emily", lastname: "Brown", email: "emily@icloud.com", password: "111111", username: "Emily")
User.create!(firstname: "Tom", lastname: "Shiba", email: "tom@icloud.com", password: "111111", username: "Tom")
User.create!(firstname: "Chris", lastname: "Australia", email: "chris@icloud.com", password: "111111", username: "chris")
User.create!(firstname: "Louis", lastname: "Fingers", email: "louis@icloud.com", password: "111111", username: "louis")
User.create!(firstname: "Jean", lastname: "Poulet", email: "jean@icloud.com", password: "111111", username: "jean")
User.create!(firstname: "Elon", lastname: "Musk", email: "elon@icloud.com", password: "111111", username: "elon")
User.create!(firstname: "Stephane", lastname: "Boss", email: "stephane@icloud.com", password: "111111", username: "steph")
User.create!(firstname: "Etienne", lastname: "Le Guay", email: "etn@icloud.com", password: "111111", username: "etnlg")

Owner.create!(firstname: "William", lastname: "Chan", email: "willy@icloud.com", password: "111111", username: "willy")
Owner.create!(firstname: "Danella", lastname: "Kababanda", email: "dan@icloud.com", password: "111111", username: "Dan")


# Review.create!(rating: "", comment: "")


# puts "Creating trips"

# @barca = Trip.new(destination: "Barcelona", start_date: Date.new(2023,07,3), end_date: Date.new(2023, 07, 10), user_id: User.all.sample.id)
# @barca.save!
# @paris = Trip.new(destination: "Paris", start_date: Date.new(2023,05,20), end_date: Date.new(2023, 05, 27), user_id: User.all.sample.id)
# @paris.save!
@menorca = Trip.new(destination: "Menorca", start_date: Date.new(2023, 8,3), end_date: Date.new(2023, 8, 10), user_id: User.find_by(email: "vincent@icloud.com").id)
@menorca.save!
# @aix = Trip.new(destination: "Aix-en-provence", start_date: Date.new(2023, 8, 15), end_date: Date.new(2023, 8, 22), user_id: User.all.sample.id)
# @aix.save!
# @biarritz = Trip.new(destination: "Biarritz", start_date: Date.new(2023, 6, 3), end_date: Date.new(2023, 6, 10), user_id: User.all.sample.id)
# @biarritz.save!
# @madrid = Trip.new(destination: "Madrid", start_date: Date.new(2023, 6, 15), end_date: Date.new(2023, 6, 22), user_id: User.all.sample.id)
# @madrid.save!
# @marseille = Trip.new(destination: "Marseille", start_date: Date.new(2023, 6, 23), end_date: Date.new(2023, 6, 29), user_id: User.all.sample.id)
# @marseille.save!


puts "Creating activities"

image1 = Rails.root.join("app", "assets", "images", "menorca", "cova1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "cova2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "cova3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Explore the Cova d'en Xoroi", description: "Venture into the
  captivating Cova d'en Xoroi, a natural cave located in the cliffs with stunning views over the Mediterranean. By day,
  it's a unique place to enjoy a drink while looking out to sea. At night, the cave transforms into a nightclub,
  offering an unparalleled experience.", location: "Cova d'en Xoroi, Menorca", price: 50)
activity.photo.attach(io: file1, filename: "cova1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "cova2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "cova3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "tudons1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "tudons2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "tudons3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Tour the Naveta d'es Tudons", description: "Discover the Naveta
  d'es Tudons, the most well-preserved burial structure in the Balearic Islands. This prehistoric monument offers a
  unique glimpse into Menorca's distant past and is a must-see for history enthusiasts.",
  location: "Naveta d'es Tudons, Menorca", price: 60)
activity.photo.attach(io: file1, filename: "tudons1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "tudons2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "tudons3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "hike1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "hike2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "hike3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Hike the Cami de Cavalls", description: "Embark on an adventure
  along the Cami de Cavalls, a trail that encircles the island. Offering stunning views of the coastline, this trail
  allows you to experience the island's diverse landscapes. Whether you take on a small section or the entire path,
  this is a must for outdoor enthusiasts.", location: "Cami de Cavalls, Menorca", price: 30)
activity.photo.attach(io: file1, filename: "hike1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "hike2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "hike3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "horse1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "horse2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "horse3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Menorca Horse Riding", description: "Experience the beauty of
  Menorca on horseback. Riding along the Cami de Cavalls or through the island's stunning interior, you'll have the
  chance to see Menorca from a unique perspective. Suitable for all ages and skill levels.",
  location: "Son bou, Menorca", price: 100)
activity.photo.attach(io: file1, filename: "horse1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "horse2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "horse3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "kayak1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "kayak2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "kayak3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Kayaking in Cala Galdana", description: "Immerse yourself in
  the crystal clear waters of Cala Galdana by kayak. Explore the spectacular coastline, discovering hidden beaches and
  caves. This is a perfect activity for both beginners and experienced paddlers.", location: "Cala Galdana, Menorca",
  price: 70)
activity.photo.attach(io: file1, filename: "kayak1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "kayak2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "kayak3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "tower1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "tower2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "tower3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Visit the Fornells Tower", description: "Explore the Fornells
  Tower, an 18th-century defense tower built to guard against Turkish invasions. Climb to the top for a panoramic view
  of the surrounding coastline.", location: "Fornells Tower, Menorca", price: 60)
activity.photo.attach(io: file1, filename: "tower1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "tower2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "tower3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "binibeca1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "binibeca2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "binibeca3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Binibeca Vell Visit", description: "Wander the quaint,
  whitewashed streets of Binibeca Vell, a charming fishing village on Menorca's south coast. It's a quiet, picturesque
  place that's perfect for a leisurely stroll.", location: "Binibeca Vell, Menorca", price: 50)
activity.photo.attach(io: file1, filename: "binibeca1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "binibeca2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "binibeca3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "diving1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "diving2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "diving3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Scuba-diving in Menorca", description: "Dive into the clear
  waters of Menorca and discover a world of marine life. Whether you're a beginner or an experienced diver, you'll find
  an underwater adventure that's perfect for you.", location: "Binibeca, Menorca", price: 120)
activity.photo.attach(io: file1, filename: "diving1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "diving2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "diving3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "paddle1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "paddle2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "paddle3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Stand Up Paddleboarding (SUP)", description: "Experience the
coast of Menorca from a stand-up paddleboard. Glide over the crystal-clear waters, explore secluded beaches, and enjoy
the tranquillity of the sea.", location: "Cala en Bosc, Menoca", price: 70)
activity.photo.attach(io: file1, filename: "paddle1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "paddle2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "paddle3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "menorca", "visit1.jpg")
image2 = Rails.root.join("app", "assets", "images", "menorca", "visit2.jpg")
image3 = Rails.root.join("app", "assets", "images", "menorca", "visit3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Visit Taula de Torralba", description: "Explore the Taula de
  Torralba, a prehistoric monument unique to Menorca. This ancient T-shaped stone monument is a fascinating piece of
  the island's history.", location: "Taula de Torralba, Menorca", price: 50)
activity.photo.attach(io: file1, filename: "visit1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "visit2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "visit3.jpg", content_type: "image/jpg")
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
  world of glaciers in Iceland!", location: "Mosfellsbær, Iceland", price: 250)
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
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "Swim3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image3))
activity = Activity.new(owner_id: Owner.last.id, name: "Swimming in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Djibouti, Ethiopia", price: 70)
activity.photo.attach(io: file1, filename: "swim1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "swim2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "Swim3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "camping1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "camping2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "camping3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Imagine camping in the middle of the desert", description: "Be
  adventurous and try this amazing activity that we offer no need to pack your tents we got everything that is needed",
  location: "Lalibela, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "camping1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "camping2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "camping3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "hunt1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "hunt2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "hunt3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Do you have a competiton spirit? Try this!", description: "This
  is going to blow your mind, Imagine having different groups that will compete with the group we will assign to you,
  the winners will go home with big rewards ", location: "Lalibela, Ethiopie", price: 300)
activity.photo.attach(io: file1, filename: "hunt1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "hunt2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "hunt3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "sky1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "sky2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "sky3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Skydiving in the middle of the desert", description: "Go crazy
  and try this unique and amazing activity", location: "Mek'ele, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "sky1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "sky2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "sky3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "hike1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "hike2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "hike3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Hiking in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Mek'ele, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "hike1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "hike2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "hike3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "climb1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "climb2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "climb3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Climbing the mountains of Mek'ele ", description: "Go crazy
  and offer yourself this amazing experience, to keep you in shape at the same time enjoying the nature", location:
  "Lalibela, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "climb1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "climb2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "climb3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "moto1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "moto2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "moto3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Moto riding in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Djibouti, Ethiopie", price: 450)
activity.photo.attach(io: file1, filename: "moto1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "moto2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "moto3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "bike1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "bike2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "bike3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Are you a bike lover try it, have Fun", description: "We want to
  surprise you, you need nothing as we offer all the equipments during your vacation, stay in shape", location:
  "Lalibela, Ethiopie", price: 350)
activity.photo.attach(io: file1, filename: "bike1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "bike2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "bike3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "bbq1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "bbq2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "bbq3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Gather friends and meat and bbq in Djibouti", description: "A
  once in lifetime experience imagine being connected with the nature and being able to bbq
  some meat in the middle of nowhere", location: "Lalibela, Ethiopie", price: 150)
activity.photo.attach(io: file1, filename: "bbq1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "bbq2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "bbq3.jpg", content_type: "image/jpg")
activity.save!

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "horse1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "horse2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "horse3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Riding horses in the nature of Dire Dawa ", description:
   "Offering exceptional experience of riding horse in the nature of Dure Dawa with our our guides",
   location: "Lalibela, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "horse1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "horse2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "horse3.jpg", content_type: "image/jpg")
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
  location: "Reykjavik, Iceland", price: 180)
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
   to all the best spots to deeply enjoy the glacier.", location: "Hof, Iceland", price: 140)
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
  also known as the Tree of life, is one of the oldest trees in the world. You will have the chance to walk in the same
  footsteps as our ancestors and relive more than 2000 years of history ", location: "Baobab Avenue, Madagascar", price:
   50)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Snorkeling among sea puppies", description: "Snorkel in the
  clearest water in the world amongs more than 500 friendly creatures and corals. All the equipments and underwater
  camera included in the excursion", location: "Nosy Be, Madagascar", price: 100)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Rock climbing in the Rock Forest of Tsingy", description: "Rock
  climbing in the famous Rock Forest of Tsingy. These rocks were formed during the prehistorical era and you will have
  the chance to visit Indiana Jones set and feel like a holiday star! From climbing to ziplining, this activity is not
  for the faint of heart.", location: "Tsingy National Park, Madagascar", price: 70)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Diving in the unknown", description: "Dive in the depth of
  Madagascar, where you will encounter underwater species that only live in this area.", location: "Nosy Be,
  Madagascar", price: 100)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Jumping off Maramokotro mountain", description: "Hike to the top
  of Maramokotro mountain. The journey will take approximately 3 hours. Halfway in the journey, we will do a pitstop
  where you would taste local food and then resume your journey to the top where a wingsuit will be provided to you.
  The only thing left, is to jump off and fly!", location: "Maramokotro, Madagascar", price: 80)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Paragliding off Andringitra mountains", description: "For
  adrenaline seeker, we will go up Andringitra mountains. A very remote area with a spetacular valley and unforgettable
  landscape, a flat and clear, broad bottom of valley without any electrical line, nor road, facing Tsaranoro cliffs
  with a dropof more than 800 meters!", location: "Andringitra, Madagascar", price: 90)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Mountain biking down a volcano", description: "Going down a
  mountain sounds exciting? How about going down an active volcano? Even better, if you are able to beat the time of
  world renowned Travis Pastrana, this activity will be on the house! Bike, protection equipment and helicopter airlift
  included.", location: "Morafenobe, Madagascar", price: 80)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Dog Sledding", description: "Dog sledding can be done year round
  although you will only go dog sledding on a glacier during the summertime.In winter, the weather on the glaciers can
  be too harsh so the dogs are kept on the South Coast of Iceland where the weather is milder, so there's actually not
  a guarantee that you will go dog sledding on snow during wintertime—but it's guaranteed during summer!Dog sledding is
  a fun activity for all ages, and kids as young as 2 years old can go on the dog sleds. You also get plenty of time
  to fuss over the cute and fun dogs, in amidst travelling in a beautiful landscape in style. ", location: "Reykjavik,
  Iceland", price: 200)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Surfing in Iceland", description: "Surfing in Iceland is
  not only for hardcore surfers but for anyone looking for something a little different during their stay. Although
  the waves can be big and the sea is ice cold, surfing here presents some unique benefits, such as incredible
  surroundings, endurance training and some fantastic surf breaks. Without a doubt, the best time to go surfing in
  Iceland is between October and March, when most of the country is battered by rain, storms and strong winds Of course,
  strong winds means strong waves along the coastlines, thus a better and more challenging experience.  The majority of
  surfing in Iceland is done off the moon-like landscapes of the Reykjanes Peninsula, home to such attractions as Lake
  Kleifarvatn and the Bridge Between the Continents.", location: "Garour, Iceland", price: 300)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Mountain biking in Iceland", description: "Everyone loves
  a cyclist. Pedalling away on their two-wheelers, this interesting breed of sportsman has long found Iceland to be
  particularly suited to cycling; the roads are long, scenic and hold little traffic, and most of the major attractions
  can be accessed from the island's Ring Road. This has allowed cyclists to merge their passion with traditional
  sightseeing, extending the process over a number of days in order to allow passage from destination
  to the next. ", location: "Hengill, Iceland", price: 200)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Caving with crocodiles", description: "If you are slightly bored
  with resort idyll, a visit to the Crocodile Caves located underground in Ankarana National Park will be truly
  refreshing. This large underground network of caves and rivers is a home to 14 species of squealing bats, giant eels,
  endemic blind shrimps and crocodiles. Rock spires and dropping water contribute to the scary atmosphere. There is only
  one way in and one way out.", location: "Morafenobe, Madagascar", price: 70)
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
  enjoyed by people of all ages and skill levels", location: "Morafenobe, Madagascar", price: 50)
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
  most popular nature destination, Isalo National Park, lies amidst the Jurassic-era highlands of the country's
  southwest. Established in 1962, it protects over 190,000 acres of land dominated by a dramatic sandstone massif that has been
  eroded by time and weather into an otherworldly collection of plateaus, canyons, gorges, and pinnacles", location:
  "Isalo National Park, Madagascar", price: 50)
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
activity = Activity.new(owner_id: Owner.last.id, name: "Volcano Tour", description: "Although infinitely more exciting
  when they are erupting, this tour inside a volcano is still a pretty impressive caving tour available in the
  summertime. Fear not, you won't see any flowing magma, but instead, a dazzling caldera made up colourful inner rock
  faces, Volcano tours provide a fascinating insight into the geothermally active nature of Iceland's landscape,
  as well as presenting one of the more unique activities on earth—actually being inside a volcano! ", location:
  "Grindavik, Iceland", price: 400)
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
  priciest, unfortunately, but then again, whenever did something so spectacular come cheap? Heli-skiing and
  Heli-snowboarding are, quite obviously, more extreme than their usual counterpart, meaning that a higher level of
  experience and skill is required in order to participate in this type of tour. For those who fit the description,
  you will have the rare opportunity to ski/snowboard from the summit of a mountain all way down to the coastlines of
  the Atlantic. Nothing beats the feeling of skiing or snowboarding down a steep hill with fresh powder. Such an
  experience is only complimented by being the only one on the slope. Not to mention when you have breathtaking views
  all the way down and get to fly around in a helicopter on your way up.", location: "Dalvik, Iceland", price: 600)
activity.photo.attach(io: file1, filename: "ski1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "ski2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "ski3.jpg", content_type: "image/jpg")
activity.save!


trip = Trip.new
trip.start_date = Date.parse("2023-05-01")
trip.end_date = Date.parse("2023-05-07")
trip.user_id = User.find_by(email: "flo@icloud.com").id
trip.destination = "menorca"
trip.save!

menorca_activities = Activity.near("menorca", 100)

trip_activity = TripActivity.create!(
  trip: trip,
  activity: menorca_activities.sample,
  day: 1,
  traveler: 2,
  start_time: Date.today,
  end_time: Date.today,
  done: true
)
trip_activity = TripActivity.create!(
  trip: trip,
  activity: menorca_activities.sample,
  day: 2,
  traveler: 2,
  start_time: Date.today,
  end_time: Date.today,
  done: true
)
trip_activity = TripActivity.create!(
  trip: trip,
  activity: menorca_activities.sample,
  day: 4,
  traveler: 2,
  start_time: Date.today,
  end_time: Date.today,
  done: true
)
trip_activity = TripActivity.create!(
  trip: trip,
  activity: menorca_activities.sample,
  day: 5,
  traveler: 2,
  start_time: Date.today,
  end_time: Date.today,
  done: true
)

reviews_array = [
  "This was a great, just insane",
  "Good and nice ",
  "I had so much fun doing this",
  "Absolutely amazing experience",
  "Highly recommended! ",
  "The best I've ever tried!",
  "I can't wait to do this again!",
  "Incredible and thrilling adventure!",
  "I had a blast participating in this! ",
  "Such a unique and enjoyable experience!",
  "This exceeded my expectations!",
  "Fantastic with friendly staff!",
  "Great for all ages!",
  "I can't believe how much I enjoyed this!",
  "Well worth the price, I loved it!",
  "The instructors were knowledgeable and helpful.",
  "This is a must-try!ane the Goat",
  "I can't stop raving about this experience!",
  "So much adrenaline rush during this experience!",
  "I felt safe and secure throughout the entire experience.",
  "Awesome experience that left me wanting more!",
  "I can't recommend this experience enough!",
  "A fun and thrilling way to spend the day!",
  "This experience is perfect for adventure seekers!",
  "I was blown away by this experience!",
  "Such an exhilarating experience!",
  "The views during this experience were breathtaking!",
  "I had an absolute blast!",
  "Unforgettable memories made during this experience!",
  "This experience is worth every penny!",
  "I can't wait to bring my friends next time!",
  "The guides were friendly and knowledgeable.",
  "I felt an adrenaline rush like never before!",
  "This experience is a real adrenaline-pumping adventure!",
  "I'm still buzzing from the excitement of this experience!",
  "The equipment provided was top-notch!",
  "This experience is perfect for thrill-seekers!",
  "I had an incredible time participating in this experience",
  "The staff made sure everyone had a great time!",
  "This activity is an absolute thrill ride!",
  "I couldn't get enough of this activity!",
  "This is hands down the best activity I've ever done!",
  "I'm already planning to do this activity again!",
  "Such a fun and enjoyable experience!",
  "This activity is a hidden gem!",
  "I felt like a superhero during this activity!",
  "This activity is a real adrenaline rush!",
  "I had the time of my life doing this activity!",
  "The guides made the activity even more exciting!",
  "This is perfect for adventure lovers!",
  "I can't believe how much fun I had!",
  "This is a real thrill!",
  "The whole experience was amazing!e",
  "This is a must-do when visiting!",
  "I was on an adrenaline high throughout the activity!",
  "This adventure is a real crowd-pleaser!",
  "I felt like I was in an action movie!",
  "The staff went above and beyond to make it memorable!",
  "I couldn't stop smiling the entire time!",
  "This adventure is worth every second!",
  "I had a fantastic time!",
  "The adrenaline rush was unreal!",
  "This adventure is perfect for thrill enthusiasts!",
  "I would do this adventure again in a heartbeat!",
  "I'm so glad I tried this adventure!",
  "This adventure is a real game-changer",
  "I was completely blown away!",
  "This adventure is an absolute must-try!",
  "I'm still buzzing from the excitement!",
  "I can't recommend this adventure highly enough",
  "This adventure is a real adrenaline-pumper!",
  "I had the best time ever!"]

  reviews_array.each do |review|
    Review.create!(
      rating: [3,4,5].sample,
      comment: review,
      trip_activity: trip_activity
    )
  end







# Review.create!(rating: "4", comment: "The activity was a thrilling adventure that got my adrenaline pumping.")

# Review.create!(rating: "5", comment: "I was blown away by the breathtaking views and stunning landscapes.")

# Review.create!(rating: "3", comment: "The activity was enjoyable, but I expected a bit more excitement.")

# Review.create!(rating: "4", comment: "I had an amazing time exploring the hidden gems of the area.")

# Review.create!(rating: "5", comment: "The activity exceeded my expectations and left me with unforgettable memories.")

# Review.create!(rating: "4", comment: "I felt a sense of accomplishment after completing the challenging tasks.")

# Review.create!(rating: "5", comment: "The activity allowed me to immerse myself in the local culture and traditions.")

# Review.create!(rating: "3", comment: "While the activity was fun, I felt it lacked a bit of variety.")

# Review.create!(rating: "4", comment: "The guides were knowledgeable and made the activity both educational and entertaining.")

# Review.create!(rating: "5", comment: "I was mesmerized by the beauty of nature and the peacefulness of the surroundings.")

# Review.create!(rating: "4", comment: "The activity provided a perfect blend of adventure and relaxation.")

# Review.create!(rating: "5", comment: "I had an incredible time exploring the hidden gems of the destination.")

# Review.create!(rating: "4", comment: "The activity challenged me to step out of my comfort zone and try new things.")

# Review.create!(rating: "5", comment: "The activity was a feast for the senses, with delicious food and captivating performances.")

# Review.create!(rating: "3", comment: "I enjoyed the activity, but I felt that it could have been more organized.")

# Review.create!(rating: "4", comment: "The activity offered a unique and immersive experience that I will never forget.")

# Review.create!(rating: "5", comment: "I felt a deep connection with nature and a sense of peace during the activity.")

# Review.create!(rating: "4", comment: "The activity was well-paced, allowing me to savor every moment.")

# Review.create!(rating: "5", comment: "I was captivated by the rich history and fascinating stories shared during the activity.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between adventure and relaxation.")

# Review.create!(rating: "5", comment: "I felt a sense of awe and wonder as I explored the stunning landscapes.")

# Review.create!(rating: "4", comment: "The guides were friendly and knowledgeable, making the activity enjoyable and informative.")

# Review.create!(rating: "5", comment: "The activity awakened my sense of curiosity and sparked a desire for further exploration.")

# Review.create!(rating: "4", comment: "I enjoyed the activity and appreciated the opportunity to learn something new.")

# Review.create!(rating: "5", comment: "The activity allowed me to escape the hustle and bustle of daily life and reconnect with nature.")

# Review.create!(rating: "4", comment: "The activity was well-organized and provided a seamless experience from start to finish.")

# Review.create!(rating: "5", comment: "I was fascinated by the local traditions and customs showcased during the activity.")

# Review.create!(rating: "4", comment: "The activity pushed me out of my comfort zone and helped me discover new abilities.")

# Review.create!(rating: "5", comment: "The activity provided a sense of freedom and liberation. I felt alive and energized.")

# Review.create!(rating: "4", comment: "I appreciated the attention to detail and the thoughtfulness that went into the activity.")

# Review.create!(rating: "5", comment: "The activity allowed me to reconnect with my adventurous spirit and embrace the unknown.")

# Review.create!(rating: "4", comment: "I had a great time exploring the natural wonders and marvels of the area.")

# Review.create!(rating: "5", comment: "The activity was a perfect blend of excitement, education, and relaxation.")

# Review.create!(rating: "4", comment: "The activity challenged me physically and mentally, pushing me to overcome my limits.")

# Review.create!(rating: "5", comment: "I felt a deep sense of gratitude for the opportunity to experience such a unique activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to discover hidden talents and explore new interests.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty and serenity of the surroundings. It was a tranquil escape.")

# Review.create!(rating: "4", comment: "The activity provided a fresh perspective and allowed me to see the world from a different angle.")

# Review.create!(rating: "5", comment: "I felt a deep sense of connection with the local community and their way of life.")

# Review.create!(rating: "4", comment: "The activity offered a perfect mix of adventure, relaxation, and cultural immersion.")

# Review.create!(rating: "5", comment: "I was enchanted by the magical atmosphere and the enchanting experiences.")

# Review.create!(rating: "4", comment: "The activity challenged me to step out of my comfort zone and embrace new experiences.")

# Review.create!(rating: "5", comment: "This activity allowed me to reconnect with my inner child and experience pure joy.")

# Review.create!(rating: "4", comment: "The activity provided a unique insight into the local traditions and customs.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty and grandeur of the natural landscapes.")

# Review.create!(rating: "4", comment: "The activity was well-structured and allowed for moments of reflection and self-discovery.")

# Review.create!(rating: "5", comment: "I felt a deep sense of joy and fulfillment during this activity. It was a moment of pure happiness.")

# Review.create!(rating: "4", comment: "The activity challenged me physically and mentally, helping me grow as an individual.")

# Review.create!(rating: "5", comment: "This activity allowed me to appreciate the beauty and wonder of the natural world.")

# Review.create!(rating: "4", comment: "The activity was thoughtfully designed, offering a unique and memorable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the vibrant colors and stunning landscapes I encountered during this activity.")

# Review.create!(rating: "4", comment: "The activity fostered a sense of camaraderie and connection among the participants.")

# Review.create!(rating: "5", comment: "I felt a deep sense of gratitude for the opportunity to experience this activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to break free from routine and experience something extraordinary.")

# Review.create!(rating: "5", comment: "I felt a sense of wonder and awe as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized, ensuring a smooth and enjoyable experience for all.")

# Review.create!(rating: "5", comment: "I was captivated by the history and heritage of the place. It was a journey through time.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between adventure and relaxation.")

# Review.create!(rating: "5", comment: "I had an amazing time exploring the hidden gems and cultural treasures of the destination.")

# Review.create!(rating: "4", comment: "The activity pushed me beyond my limits and helped me discover my true potential.")

# Review.create!(rating: "5", comment: "This activity allowed me to disconnect from the outside world and reconnect with myself.")

# Review.create!(rating: "4", comment: "The activity was a perfect blend of adventure, culture, and personal growth.")

# Review.create!(rating: "5", comment: "I felt a deep sense of awe and reverence for the beauty of the natural world during this activity.")

# Review.create!(rating: "4", comment: "The guides were knowledgeable and passionate, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was completely immersed in the moment, forgetting about everything else.")

# Review.create!(rating: "4", comment: "The activity allowed me to learn from local experts and gain a deeper understanding.")

# Review.create!(rating: "5", comment: "I had a fantastic time exploring the hidden gems and immersing myself in the local culture.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective on life and opened my eyes to new possibilities.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and tranquility throughout the activity.")

# Review.create!(rating: "4", comment: "The activity challenged me mentally and expanded my knowledge and understanding.")

# Review.create!(rating: "5", comment: "This activity reminded me of the importance of living in the present moment and appreciating the simple things.")

# Review.create!(rating: "4", comment: "The activity was a perfect combination of adventure, culture, and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep sense of connection with the natural surroundings and the local community.")

# Review.create!(rating: "4", comment: "The guides were friendly and knowledgeable, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was fully present and immersed in the experience. It was a moment of pure bliss.")

# Review.create!(rating: "4", comment: "The activity allowed me to learn new skills and discover hidden talents.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty of nature and the serenity of the surroundings.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between excitement and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep sense of appreciation and gratitude throughout the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized and executed with precision.")

# Review.create!(rating: "5", comment: "I was fascinated by the stories and legends shared during the activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to step out of my comfort zone and embrace new experiences.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and tranquility during the activity. It was a meditative experience.")

# Review.create!(rating: "4", comment: "The activity provided a perfect mix of adventure, education, and relaxation.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty and grandeur of the natural landscapes.")

# Review.create!(rating: "4", comment: "The activity was well-structured and allowed for moments of introspection and self-reflection.")

# Review.create!(rating: "5", comment: "I felt a deep sense of joy and fulfillment during this activity. It was a moment of pure happiness.")

# Review.create!(rating: "4", comment: "The activity challenged me physically and mentally, helping me grow and develop as an individual.")

# Review.create!(rating: "5", comment: "This activity allowed me to appreciate the intricate details and hidden treasures of the surroundings.")

# Review.create!(rating: "4", comment: "The activity was thoughtfully designed, offering a unique and memorable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the vibrant colors and the rich cultural heritage during the activity.")

# Review.create!(rating: "4", comment: "The activity fostered a sense of camaraderie and connection among the participants.")

# Review.create!(rating: "5", comment: "I felt a deep sense of gratitude for the opportunity to experience this activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to break free from my everyday routine and experience something extraordinary.")

# Review.create!(rating: "5", comment: "I felt a sense of wonder and awe as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized and provided a seamless and enjoyable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the history and heritage of the place. It was a journey through time.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between adventure and relaxation.")

# Review.create!(rating: "5", comment: "I had an amazing time exploring the hidden gems and cultural wonders of the destination.")

# Review.create!(rating: "4", comment: "The activity challenged me to step out of my comfort zone and embrace new adventures.")

# Review.create!(rating: "5", comment: "The activity was a perfect escape from the daily grind, allowing me to reconnect with nature and myself.")

# Review.create!(rating: "4", comment: "I appreciated the attention to detail and the personal touch in every aspect of the activity.")

# Review.create!(rating: "5", comment: "I felt a sense of exhilaration and freedom as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective on the local culture and traditions.")

# Review.create!(rating: "5", comment: "I was captivated by the natural beauty and the sense of tranquility during the activity.")

# Review.create!(rating: "4", comment: "The guides were friendly and passionate, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was fully engaged and present in the moment, experiencing pure bliss.")

# Review.create!(rating: "4", comment: "The activity allowed me to learn from experts and gain a deeper understanding of the local customs.")

# Review.create!(rating: "5", comment: "I had an unforgettable experience exploring the hidden gems and immersing myself in the local culture.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective and allowed me to see things from a different angle.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and serenity throughout the activity.")

# Review.create!(rating: "4", comment: "The activity challenged me intellectually and expanded my horizons.")

# Review.create!(rating: "5", comment: "This activity reminded me of the importance of being present and appreciating the beauty of nature.")

# Review.create!(rating: "4", comment: "The activity offered a perfect blend of adventure, culture, and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep connection with the natural surroundings and a sense of harmony.")

# Review.create!(rating: "4", comment: "The guides were knowledgeable and enthusiastic, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was completely absorbed in the activity, losing track of time and worries.")

# Review.create!(rating: "4", comment: "The activity allowed me to acquire new skills and explore my potential.")

# Review.create!(rating: "5", comment: "I was enchanted by the beauty of nature and the tranquility of the surroundings.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between excitement and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep sense of appreciation and wonder throughout the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized, ensuring a smooth and enjoyable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the stories and legends that unfolded during the activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to step out of my comfort zone and embrace new experiences.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and tranquility during the activity. It was a meditative experience.")

# Review.create!(rating: "4", comment: "The activity provided a perfect mix of adventure, education, and relaxation.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty and grandeur of the natural landscapes.")

# Review.create!(rating: "4", comment: "The activity was well-structured and allowed for moments of introspection and self-reflection.")

# Review.create!(rating: "5", comment: "I felt a deep sense of joy and fulfillment during this activity. It was a moment of pure happiness.")

# Review.create!(rating: "4", comment: "The activity challenged me physically and mentally, helping me grow and develop as an individual.")

# Review.create!(rating: "5", comment: "This activity allowed me to appreciate the beauty and wonder of the natural world.")

# Review.create!(rating: "4", comment: "The activity was thoughtfully designed, offering a unique and memorable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the vibrant colors and the rich cultural heritage during the activity.")

# Review.create!(rating: "4", comment: "The activity fostered a sense of camaraderie and connection among the participants.")

# Review.create!(rating: "5", comment: "I felt a deep sense of gratitude for the opportunity to experience this activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to break free from my everyday routine and experience something extraordinary.")

# Review.create!(rating: "5", comment: "I felt a sense of wonder and awe as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized and provided a seamless and enjoyable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the history and heritage of the place. It was a journey through time.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between adventure and relaxation.")

# Review.create!(rating: "5", comment: "I had an amazing time exploring the hidden gems and cultural wonders of the destination.")

# Review.create!(rating: "4", comment: "The activity challenged me to step out of my comfort zone and embrace new adventures.")

# Review.create!(rating: "5", comment: "The activity was a perfect escape from the daily grind, allowing me to reconnect with nature and myself.")

# Review.create!(rating: "4", comment: "I appreciated the attention to detail and the personal touch in every aspect of the activity.")

# Review.create!(rating: "5", comment: "I felt a sense of exhilaration and freedom as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective on the local culture and traditions.")

# Review.create!(rating: "5", comment: "I was captivated by the natural beauty and the sense of tranquility during the activity.")

# Review.create!(rating: "4", comment: "The guides were friendly and passionate, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was fully engaged and present in the moment, experiencing pure bliss.")

# Review.create!(rating: "4", comment: "The activity allowed me to learn from experts and gain a deeper understanding of the local customs.")

# Review.create!(rating: "5", comment: "I had an unforgettable experience exploring the hidden gems and immersing myself in the local culture.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective and allowed me to see things from a different angle.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and serenity throughout the activity.")

# Review.create!(rating: "4", comment: "The activity challenged me intellectually and expanded my horizons.")

# Review.create!(rating: "5", comment: "This activity reminded me of the importance of being present and appreciating the beauty of nature.")

# Review.create!(rating: "4", comment: "The activity offered a perfect blend of adventure, culture, and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep connection with the natural surroundings and a sense of harmony.")

# Review.create!(rating: "4", comment: "The guides were knowledgeable and enthusiastic, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was completely absorbed in the activity, losing track of time and worries.")

# Review.create!(rating: "4", comment: "The activity allowed me to acquire new skills and explore my potential.")

# Review.create!(rating: "5", comment: "I was enchanted by the beauty of nature and the tranquility of the surroundings.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between excitement and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep sense of appreciation and wonder throughout the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized, ensuring a smooth and enjoyable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the stories and legends that unfolded during the activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to step out of my comfort zone and embrace new experiences.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and tranquility during the activity. It was a meditative experience.")

# Review.create!(rating: "4", comment: "The activity provided a perfect mix of adventure, education, and relaxation.")

# Review.create!(rating: "5", comment: "I was captivated by the beauty and grandeur of the natural landscapes.")

# Review.create!(rating: "4", comment: "The activity was well-structured and allowed for moments of introspection and self-reflection.")

# Review.create!(rating: "5", comment: "I felt a deep sense of joy and fulfillment during this activity. It was a moment of pure happiness.")

# Review.create!(rating: "4", comment: "The activity challenged me physically and mentally, helping me grow and develop as an individual.")

# Review.create!(rating: "5", comment: "This activity allowed me to appreciate the beauty and wonder of the natural world.")

# Review.create!(rating: "4", comment: "The activity was thoughtfully designed, offering a unique and memorable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the vibrant colors and the rich cultural heritage during the activity.")

# Review.create!(rating: "4", comment: "The activity fostered a sense of camaraderie and connection among the participants.")

# Review.create!(rating: "5", comment: "I felt a deep sense of gratitude for the opportunity to experience this activity.")

# Review.create!(rating: "4", comment: "The activity allowed me to break free from my everyday routine and experience something extraordinary.")

# Review.create!(rating: "5", comment: "I felt a sense of wonder and awe as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity was well-organized and provided a seamless and enjoyable experience.")

# Review.create!(rating: "5", comment: "I was captivated by the history and heritage of the place. It was a journey through time.")

# Review.create!(rating: "4", comment: "The activity provided a perfect balance between adventure and relaxation.")

# Review.create!(rating: "5", comment: "I had an amazing time exploring the hidden gems and cultural wonders of the destination.")

# Review.create!(rating: "4", comment: "The activity challenged me to step out of my comfort zone and embrace new adventures.")

# Review.create!(rating: "5", comment: "The activity was a perfect escape from the daily grind, allowing me to reconnect with nature and myself.")

# Review.create!(rating: "4", comment: "I appreciated the attention to detail and the personal touch in every aspect of the activity.")

# Review.create!(rating: "5", comment: "I felt a sense of exhilaration and freedom as I immersed myself in the activity.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective on the local culture and traditions.")

# Review.create!(rating: "5", comment: "I was captivated by the natural beauty and the sense of tranquility during the activity.")

# Review.create!(rating: "4", comment: "The guides were friendly and passionate, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was fully engaged and present in the moment, experiencing pure bliss.")

# Review.create!(rating: "4", comment: "The activity allowed me to learn from experts and gain a deeper understanding of the local customs.")

# Review.create!(rating: "5", comment: "I had an unforgettable experience exploring the hidden gems and immersing myself in the local culture.")

# Review.create!(rating: "4", comment: "The activity provided a unique perspective and allowed me to see things from a different angle.")

# Review.create!(rating: "5", comment: "I felt a deep sense of peace and serenity throughout the activity.")

# Review.create!(rating: "4", comment: "The activity challenged me intellectually and expanded my horizons.")

# Review.create!(rating: "5", comment: "This activity reminded me of the importance of being present and appreciating the beauty of nature.")

# Review.create!(rating: "4", comment: "The activity offered a perfect blend of adventure, culture, and relaxation.")

# Review.create!(rating: "5", comment: "I felt a deep connection with the natural surroundings and a sense of harmony.")

# Review.create!(rating: "4", comment: "The guides were knowledgeable and enthusiastic, making the activity even more enjoyable.")

# Review.create!(rating: "5", comment: "I was completely absorbed in the activity, losing track of time and worries.")




puts "Done"
