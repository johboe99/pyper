# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Review.destroy_all
Spot.destroy_all
Category.destroy_all
Follower.destroy_all
User.destroy_all

# TODO: category_ids

category_1 = Category.create(name: "Bar", icon: "")
puts "category 1 created"

category_2 = Category.create(name: "Restaurant", icon: "")
puts "category 2 created"

category_3 = Category.create(name: "Cafe", icon: "")
puts "category 3 created"

spot_1 = Spot.create(name: "Brauhaus Neulich", description: "Cozy brewery with a large selection of beers and homemade German-style dumplings.", address: "Selchower Str. 20, 12049 Berlin", category_id: category_1.id, opening_hours: "15:00 - 01:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550254/neulich_emv2am.jpg")
spot_1.photo.attach(io: file, filename: "brauhausneulich", content_type: "image/jpg")
puts "spot 1 created"

spot_2 = Spot.create(name: "Heckmeck Kneipe", description: "Draught beer in a cozy pub with billiards, a terrace and a map of Berlin on the ceiling.", address: "Eisenacher Str. 111, 10777 Berlin", category_id: category_1.id, opening_hours: "12:00 - 01:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550253/heckmeck_pfjk5z.jpg")
spot_2.photo.attach(io: file, filename: "heckmeck", content_type: "image/jpg")
puts "spot 2 created"

spot_3 = Spot.create(name: "Lemon Grass Scent", description: "Spring rolls, pho, wok dishes and curries in a chic restaurant with pictures of Asian street scenes.", address: "Schwedter Str. 12, 10119 Berlin", category_id: category_2.id, opening_hours: "12:00 - 22:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550253/lemongrassscent_sksq77.jpg")
spot_3.photo.attach(io: file, filename: "lemongrassscent", content_type: "image/jpg")
puts "spot 3 created"

spot_4 = Spot.create(name: "Ristorante & Vinobar CaliBocca", description: "Italian pizzas, pasta dishes and aperitifs in a convivial bar with restaurant and dining terrace.", address: "Schlüterstraße 30, 10629 Berlin", category_id: category_2.id, opening_hours: "17:00 - 24:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550253/calibocca_whhkeo.jpg")
spot_4.photo.attach(io: file, filename: "calibocca", content_type: "image/jpg")
puts "spot 4 created"

spot_5 = Spot.create(name: "Al Contadino Mozzarella Bar & Bottega", description: "Rustic Italian dishes and cheese platters as well as wine and cocktails in a friendly restaurant with exposed brickwork.", address: "Auguststraße 34, 10119 Berlin", category_id: category_2.id, opening_hours: "12:00 - 22:30")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550254/mozzarellabar_b41ep2.jpg")
spot_5.photo.attach(io: file, filename: "mozarellabar", content_type: "image/jpg")
puts "spot 5 created"


user_1 = User.create(first_name: "Katharina", last_name: "Döhle", email: "katharina@doehle.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732195306/Katha_pic_zfev1d.jpg")
user_1.photo.attach(io: file, filename: "katharina.jpg", content_type: "image/jpg")
puts "user 1 created"

user_2 = User.create(first_name: "Ajmal", last_name: "Khan", email: "ajmal@khan.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732549416/T02NE0241-U07PK0EKHS7-99da87e8d3ea-512_bvkgtb.jpg")
user_2.photo.attach(io: file, filename: "ajmal.jpg", content_type: "image/jpg")
puts "user 2 created"

user_3 = User.create(first_name: "Anik", last_name: "van Eester", email: "anik@vaneester.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732276137/development/l8mf6z533hf6you9i5gsa45qjjep.jpg")
user_3.photo.attach(io: file, filename: "katharina.jpg", content_type: "image/jpg")
puts "user 3 created"

user_4 = User.create(first_name: "Johannes", last_name: "Böhmer", email: "johannes@boehmer.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732276135/development/6gsvo6qj77v7fdztd7n0s74tnunl.jpg")
user_4.photo.attach(io: file, filename: "katharina.jpg", content_type: "image/jpg")
puts "user 4 created"

follow_1 = Follower.create(asker_id: user_2.id, receiver_id: user_1.id)
puts "follow 1 created"

follow_2 = Follower.create(asker_id: user_3.id, receiver_id: user_1.id)
puts "follow 2 created"

follow_3 = Follower.create(asker_id: user_4.id, receiver_id: user_1.id)
puts "follow 3 created"

follow_4 = Follower.create(asker_id: user_1.id, receiver_id: user_2.id)
puts "follow 4 created"

follow_5 = Follower.create(asker_id: user_2.id, receiver_id: user_3.id)
puts "follow 5 created"

follow_6 = Follower.create(asker_id: user_3.id, receiver_id: user_4.id)
puts "follow 6 created"

review_1 = Review.create(content: "Cozy, tasty, perfect!", rating: 5, spot_id: spot_1.id, user_id: user_1.id)
puts "review 1 created"

review_2 = Review.create(content: "Fresh, authentic, delightful.", rating: 4, spot_id: spot_2.id, user_id: user_1.id)
puts "review 2 created"

review_3 = Review.create(content: "Crispy crust, heavenly!", rating: 3, spot_id: spot_3.id, user_id: user_1.id)
puts "review 3 created"

review_4 = Review.create(content: "Juicy steaks, top-notch!", rating: 2, spot_id: spot_5.id, user_id: user_1.id)
puts "review 4 created"

review_5 = Review.create(content: "Flavor-packed, satisfying!", rating: 5, spot_id: spot_4.id, user_id: user_2.id)
puts "review 5 created"

review_6 = Review.create(content: "Freshness galore, yum!", rating: 4, spot_id: spot_1.id, user_id: user_3.id)
puts "review 6 created"

review_7 = Review.create(content: "Sweet, indulgent, divine.", rating: 3, spot_id: spot_3.id, user_id: user_4.id)
puts "review 7 created"
