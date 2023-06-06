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

Activity.create!(owner_id: Owner.last.id, name: "Horse riding", description: "Horse riding on the beach, beautiful sunsets", location: "Son Saura, Menorca", price: 35)
puts '1'
Activity.create!(owner_id: Owner.first.id, name: "Diving", description: "Diving in incredible water", location: "Cala escorxada, Menorca", price: 65)
puts "2"
Activity.create!(owner_id: Owner.first.id, name: "Jumping", description: "Jumping from big caillou", location: "Cala en Brut, Menorca", price: 0)
Activity.create!(owner_id: Owner.first.id, name: "Horse Riding", description: "Experience horse riding on the pristine beaches with beautiful sunsets", location: "Son Saura, Menorca", price: 35)
Activity.create!(owner_id: Owner.last.id, name: "Kayaking Adventure", description: "Explore the stunning coastline and secluded coves by kayak", location: "Son Saura, Menorca", price: 50)
Activity.create!(owner_id: Owner.last.id, name: "Scuba Diving", description: "Discover the rich marine life and clear waters of Menorca", location: "Fornells, Menorca", price: 60)
Activity.create!(owner_id: Owner.last.id, name: "Historical Tour", description: "A guided tour around Menorca's ancient and historical sites", location: "Mahon, Menorca", price: 30)
Activity.create!(owner_id: Owner.last.id, name: "Wine Tasting", description: "Taste the authentic and exquisite wines of Menorca", location: "Binifadet, Menorca", price: 25)
Activity.create!(owner_id: Owner.last.id, name: "Hiking at El Toro", description: "Conquer the highest peak in Menorca for panoramic island views", location: "El Toro, Menorca", price: 20)
Activity.create!(owner_id: Owner.last.id, name: "Cycling Tour", description: "Experience a cycling adventure through Menorca's scenic landscapes", location: "Ciutadella, Menorca", price: 40)
Activity.create!(owner_id: Owner.last.id, name: "Boat Tour", description: "Relax on a boat tour to explore the stunning bays and beaches", location: "Cala'n Bosch, Menorca", price: 70)
Activity.create!(owner_id: Owner.last.id, name: "Cheese Tasting", description: "Sample traditional Menorcan cheeses at a local farm", location: "Mahon, Menorca", price: 20)
Activity.create!(owner_id: Owner.last.id, name: "Photography Workshop", description: "Capture Menorca's beauty through your lens with a professional", location: "Binibeca, Menorca", price: 45)

puts "Done"
