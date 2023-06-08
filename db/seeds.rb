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


image1 = Rails.root.join("app", "assets", "images", "swim1.jpg")
image2 = Rails.root.join("app", "assets", "images", "swim2.jpg")
image3 = Rails.root.join("app", "assets", "images", "swim3.jpg")
file1 = File.open(ActionController::Base.helpers.image_path(image1))
file2 = File.open(ActionController::Base.helpers.image_path(image2))
file3 = File.open(ActionController::Base.helpers.image_path(image2))
activity = Activity.new(owner_id: Owner.last.id, name: "Swimming in the middle of the desert", description: "Go crazy
  and try this unique activity that has great benefits for your health Vitamin D decreases the chance of SAD.
  It is an integral part of absorbing calcium", location: "Djibouti, Ethiopie", price: 200)
activity.photo.attach(io: file1, filename: "swim1.jpg", content_type: "image/jpg")
activity.photo.attach(io: file2, filename: "swim2.jpg", content_type: "image/jpg")
activity.photo.attach(io: file3, filename: "swim3.jpg", content_type: "image/jpg")
activity.save!


puts "Done"
