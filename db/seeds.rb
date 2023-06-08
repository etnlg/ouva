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
activity = Activity.new(owner_id: Owner.last.id, name: "Horse riding next to a volcano", description: "Saddle up and
  discover the unique volcanic landscape at the outskirts of
  Reykjavík on the back of a horse. Ride around the countryside and get to know the friendly Icelandic horse on this
  exciting tour", location: "Reykjavík, Iceland", price: 150)
activity.photo.attach(io: file, filename: "horse.jpg", content_type: "image/jpg")
activity.save!


image1 = Rails.root.join("app", "assets", "images", "ethipie", "swim1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethipie", "swim2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethipie", "swim3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Swimming in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Djibouti, Ethiopie", price: 200)
activity.photo.attach(io: file1, filename: "swim1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "swim2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "swim3.jpg", content_type: "image/jpg")


image1 = Rails.root.join("app", "assets", "images", "ethipie", "camping1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethipie", "camping2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethipie", "camping3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Imagine campinf in the middle of the desert", description:
  "Go crazy and try this amazing activity that we offer no need to pack your tents we got you", location: "Lalibela,
  Ethiopie", price: 350)
activity.photo.attach(io: file1, filename: "camping1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "camping2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "camping3.jpg", content_type: "image/jpg")

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


image1 = Rails.root.join("app", "assets", "images", "ethiopie", "skydiving1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "skydiving2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "skydiving3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Skydiving in the middle of the desert", description: "Go crazy
  and try this unique and amazing activity", location: "Mek'ele, Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "skydiving1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "skydiving2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "skydiving3.jpg", content_type: "image/jpg")

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

image1 = Rails.root.join("app", "assets", "images", "ethiopie", "horse1.jpg")
image2 = Rails.root.join("app", "assets", "images", "ethiopie", "horse2.jpg")
image3 = Rails.root.join("app", "assets", "images", "ethiopie", "horse3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Riding horses in the nature of Dire Dawa ", description:
   "Offering exceptional experience of riding horse in the nature of Dure Dawa with our our guides", location: "Lalibela
   , Ethiopie", price: 250)
activity.photo.attach(io: file1, filename: "horse1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "horse2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "horse3.jpg", content_type: "image/jpg")






activity.save!




puts "Done"
