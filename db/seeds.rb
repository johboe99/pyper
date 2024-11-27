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

puts "generating spots now..."
spot_1 = Spot.create(name: "Babel", description: "Authentic Lebanese cuisine with vibrant mezze dishes.", address: "Skalitzer Str. 27, 10999 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 10:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705602/babel_iufchh.jpg")
spot_1.photo.attach(io: file, filename: "babel", content_type: "image/jpg")

spot_2 = Spot.create(name: "Ankerklause", description: "Nautical-themed bar by the canal, famous for its chill vibe.", address: "Kottbusser Damm 104, 10967 Berlin", category_id: category_1.id, opening_hours: "10:00 AM - 2:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/ankerklause_ubea58.jpg")
spot_2.photo.attach(io: file, filename: "ankerklause", content_type: "image/jpg")

spot_3 = Spot.create(name: "House of Small Wonder", description: "Charming café offering Japanese-inspired dishes and coffee.", address: "Johannisstr. 20, 10117 Berlin", category_id: category_3.id, opening_hours: "9:00 AM - 5:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/smallwonder_pfeewq.jpg")
spot_3.photo.attach(io: file, filename: "smallwonder", content_type: "image/jpg")

spot_4 = Spot.create(name: "Prater Garten", description: "Historic beer garden with a selection of German beers and comfort food.", address: "Kastanienallee 7-9, 10435 Berlin", category_id: category_1.id, opening_hours: "12:00 PM - 10:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/pratergarten_hoqg0k.jpg")
spot_4.photo.attach(io: file, filename: "pratergarten", content_type: "image/jpg")

spot_5 = Spot.create(name: "Burgermeister", description: "Legendary burger joint under the U1 tracks.", address: "Oberbaumstr. 8, 10997 Berlin", category_id: category_2.id, opening_hours: "11:00 AM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/burgermeister_khxx4e.jpg")
spot_5.photo.attach(io: file, filename: "burgermeister", content_type: "image/jpg")

spot_6 = Spot.create(name: "Schwarzes Café", description: "A Berlin institution serving a diverse menu 24/7.", address: "Kantstr. 148, 10623 Berlin", category_id: category_2.id, opening_hours: "Open 24 hours")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/schwarzescafe_v2rkzg.jpg")
spot_6.photo.attach(io: file, filename: "schwarzescafe", content_type: "image/jpg")

spot_7 = Spot.create(name: "Clärchens Ballhaus", description: "Iconic ballroom turned restaurant with nostalgic charm.", address: "Auguststr. 24, 10117 Berlin", category_id: category_2.id, opening_hours: "5:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/claerchens_ftvjpq.jpg")
spot_7.photo.attach(io: file, filename: "ballhaus", content_type: "image/jpg")

spot_8 = Spot.create(name: "Rosa Caleta", description: "Cozy spot for Jamaican-European fusion cuisine.", address: "Muskauer Str. 9, 10997 Berlin", category_id: category_2.id, opening_hours: "5:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/rosacaleta_e54xrm.jpg")
spot_8.photo.attach(io: file, filename: "rosacaleta", content_type: "image/jpg")

spot_9 = Spot.create(name: "Lavanderia Vecchia", description: "Rustic Italian restaurant in a former laundromat.", address: "Flughafenstraße 46, 12053 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/lavanderia_pvbuey.jpg")
spot_9.photo.attach(io: file, filename: "lavanderia", content_type: "image/jpg")

spot_10 = Spot.create(name: "Zur Letzten Instanz", description: "Berlin’s oldest pub offering traditional German dishes.", address: "Waisenstraße 14-16, 10179 Berlin", category_id: category_1.id, opening_hours: "11:00 AM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/letzteinstanz_oi5let.jpg")
spot_10.photo.attach(io: file, filename: "letzteinstanz", content_type: "image/jpg")
puts "first 10 spots created"

spot_11 = Spot.create(name: "Sage Restaurant", description: "Modern riverside restaurant with eclectic European dishes.", address: "Köpenicker Str. 18-20, 10997 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/sage_el5bg3.jpg")
spot_11.photo.attach(io: file, filename: "sage", content_type: "image/jpg")

spot_12 = Spot.create(name: "Neue Odessa Bar", description: "Stylish cocktail bar with a trendy crowd.", address: "Torstraße 89, 10119 Berlin", category_id: category_1.id, opening_hours: "6:00 PM - 3:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/odessa_yhmciq.jpg")
spot_12.photo.attach(io: file, filename: "odessa", content_type: "image/jpg")

spot_13 = Spot.create(name: "Neni Berlin", description: "Panoramic views and vibrant Middle Eastern cuisine.", address: "Budapester Str. 40, 10787 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/neni_txt0ux.jpg")
spot_13.photo.attach(io: file, filename: "neni", content_type: "image/jpg")

spot_14 = Spot.create(name: "Katz Orange", description: "Upscale restaurant blending global influences with local ingredients.", address: "Bergstraße 22, 10115 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/katz_umapdx.jpg")
spot_14.photo.attach(io: file, filename: "katzorange", content_type: "image/jpg")

spot_15 = Spot.create(name: "Bar Tausend", description: "Hidden cocktail bar with creative drinks and a chic ambiance.", address: "Schiffbauerdamm 11, 10117 Berlin", category_id: category_1.id, opening_hours: "7:00 PM - 3:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/bartausend_c37z2c.jpg")
spot_15.photo.attach(io: file, filename: "bartausend", content_type: "image/jpg")

spot_16 = Spot.create(name: "Buck and Breck", description: "Tiny speakeasy-style cocktail bar for mixology enthusiasts.", address: "Brunnenstraße 177, 10119 Berlin", category_id: category_1.id, opening_hours: "7:00 PM - 2:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/buckbreck_znkmxk.jpg")
spot_16.photo.attach(io: file, filename: "buckandbreck", content_type: "image/jpg")

spot_17 = Spot.create(name: "Klunkerkranich", description: "Rooftop bar offering great views and an artistic vibe.", address: "Karl-Marx-Str. 66, 12043 Berlin", category_id: category_1.id, opening_hours: "4:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/klunkerkranich_iazxby.jpg")
spot_17.photo.attach(io: file, filename: "klunkerkranich", content_type: "image/jpg")

spot_18 = Spot.create(name: "Michelberger Restaurant", description: "Inventive farm-to-table dishes in a stylish hotel restaurant.", address: "Warschauer Str. 39-40, 10243 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 10:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/michelberger_xmggfa.jpg")
spot_18.photo.attach(io: file, filename: "michelberger", content_type: "image/jpg")

spot_19 = Spot.create(name: "Spindler", description: "Trendy riverside restaurant with seasonal French-inspired cuisine.", address: "Paul-Lincke-Ufer 42, 10999 Berlin", category_id: category_2.id, opening_hours: "10:00 AM - 10:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/spindler_wjml4e.jpg")
spot_19.photo.attach(io: file, filename: "spindler", content_type: "image/jpg")

spot_20 = Spot.create(name: "Facciola", description: "Intimate wine bar specializing in Italian wines and small plates.", address: "Forster Str. 5, 10999 Berlin", category_id: category_1.id, opening_hours: "5:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/facciola_asfy8u.jpg")
spot_20.photo.attach(io: file, filename: "facciola", content_type: "image/jpg")
puts "10 more spots created"

spot_21 = Spot.create(name: "Distrikt Coffee", description: "Bright café with specialty coffee and hearty brunch options.", address: "Bergstraße 68, 10115 Berlin", category_id: category_3.id, opening_hours: "8:30 AM - 5:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/distrikt_infbxb.jpg")
spot_21.photo.attach(io: file, filename: "distrikt", content_type: "image/jpg")

spot_22 = Spot.create(name: "Café Einstein Stammhaus", description: "Classic Viennese café serving coffee, cakes, and hearty dishes.", address: "Kurfürstenstraße 58, 10785 Berlin", category_id: category_3.id, opening_hours: "7:30 AM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/stammhaus_ems5lv.jpg")
spot_22.photo.attach(io: file, filename: "einsteinstammhaus", content_type: "image/jpg")

spot_23 = Spot.create(name: "Rausch Schokoladenhaus", description: "Chocolate lover’s paradise with a café and fine chocolates.", address: "Charlottenstraße 60, 10117 Berlin", category_id: category_3.id, opening_hours: "10:00 AM - 8:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/rausch_geln7r.jpg")
spot_23.photo.attach(io: file, filename: "rauschschokolade", content_type: "image/jpg")

spot_24 = Spot.create(name: "Monbijou Hotel Rooftop Bar", description: "Cozy rooftop bar with stunning views of Berlin landmarks.", address: "Monbijouplatz 1, 10178 Berlin", category_id: category_1.id, opening_hours: "5:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/monbijou_hfmuox.jpg")
spot_24.photo.attach(io: file, filename: "monbijousrooftop", content_type: "image/jpg")

spot_25 = Spot.create(name: "The Barn", description: "Specialty coffee roasters with a focus on high-quality beans.", address: "Auguststraße 58, 10119 Berlin", category_id: category_3.id, opening_hours: "8:00 AM - 6:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705602/barn_hggur4.jpg")
spot_25.photo.attach(io: file, filename: "thebarn", content_type: "image/jpg")

spot_26 = Spot.create(name: "Barcomi's Deli", description: "American-style deli offering bagels, cheesecakes, and coffee.", address: "Sophienstraße 21, 10178 Berlin", category_id: category_3.id, opening_hours: "8:30 AM - 6:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705602/barcomi_yba4gz.jpg")
spot_26.photo.attach(io: file, filename: "barcomis", content_type: "image/jpg")

spot_27 = Spot.create(name: "Markthalle Neun", description: "Vibrant indoor market featuring street food and artisanal products.", address: "Eisenbahnstraße 42/43, 10997 Berlin", category_id: category_2.id, opening_hours: "10:00 AM - 8:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/markthalle_r4mcqq.jpg")
spot_27.photo.attach(io: file, filename: "markthalleneun", content_type: "image/jpg")

spot_28 = Spot.create(name: "Paris Bar", description: "Historic French restaurant with classic brasserie dishes.", address: "Kantstraße 152, 10623 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/parisbar_dnqxwg.jpg")
spot_28.photo.attach(io: file, filename: "parisbar", content_type: "image/jpg")

spot_29 = Spot.create(name: "Café am Neuen See", description: "Relaxed lakeside café and beer garden in Tiergarten.", address: "Lichtensteinallee 2, 10787 Berlin", category_id: category_3.id, opening_hours: "10:00 AM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705602/cafeneuersee_dd1mbr.jpg")
spot_29.photo.attach(io: file, filename: "caféamneuensee", content_type: "image/jpg")

spot_30 = Spot.create(name: "Silo Coffee", description: "Hip café serving artisan coffee and creative brunches.", address: "Gabriel-Max-Straße 4, 10245 Berlin", category_id: category_3.id, opening_hours: "8:30 AM - 4:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/silocoffee_vszgk3.jpg")
spot_30.photo.attach(io: file, filename: "silo", content_type: "image/jpg")
puts "you guessed it, more spots..."

spot_31 = Spot.create(name: "Hallmann & Klee", description: "Refined café known for its creative breakfast dishes.", address: "Böhmische Str. 13, 12055 Berlin", category_id: category_3.id, opening_hours: "9:00 AM - 3:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/hallmann_rf2a7j.jpg")
spot_31.photo.attach(io: file, filename: "hallmannandklee", content_type: "image/jpg")

spot_32 = Spot.create(name: "Vögelchen", description: "Cozy café-bar with an intimate and friendly vibe.", address: "Kreuzbergstraße 11, 10965 Berlin", category_id: category_3.id, opening_hours: "4:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/voegelchen_pj9k9p.jpg")
spot_32.photo.attach(io: file, filename: "voegelchen", content_type: "image/jpg")

spot_33 = Spot.create(name: "Lode & Stijn", description: "Modern European cuisine with a Scandinavian twist.", address: "Manteuffelstraße 77, 10999 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/lodestijn_g01pi0.jpg")
spot_33.photo.attach(io: file, filename: "lodeandstijn", content_type: "image/jpg")

spot_34 = Spot.create(name: "ORA", description: "Elegant café in a former pharmacy with a focus on cocktails and small plates.", address: "Oranienplatz 14, 10999 Berlin", category_id: category_1.id, opening_hours: "6:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/ora_re1xlf.jpg")
spot_34.photo.attach(io: file, filename: "ora", content_type: "image/jpg")

spot_35 = Spot.create(name: "Shiso Burger", description: "Asian-inspired burgers with fresh ingredients and bold flavors.", address: "Auguststraße 29c, 10119 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 10:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/shiso_dcryck.jpg")
spot_35.photo.attach(io: file, filename: "shiso", content_type: "image/jpg")

spot_36 = Spot.create(name: "Zeit für Brot", description: "Artisanal bakery with freshly baked bread and cinnamon rolls.", address: "Alte Schönhauser Str. 4, 10119 Berlin", category_id: category_3.id, opening_hours: "7:30 AM - 8:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/zeitfuerbrot_wpjyaa.jpg")
spot_36.photo.attach(io: file, filename: "zeitfuerbrot", content_type: "image/jpg")

spot_37 = Spot.create(name: "Friedrichshain's Himmelreich", description: "Quirky café-bar known for its LGBTQ+ friendly atmosphere.", address: "Simon-Dach-Straße 36, 10245 Berlin", category_id: category_3.id, opening_hours: "4:00 PM - 1:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/himmelreich_khijeq.jpg")
spot_37.photo.attach(io: file, filename: "himmelreich", content_type: "image/jpg")

spot_38 = Spot.create(name: "Roamers", description: "Rustic café serving hearty brunch dishes with a creative flair.", address: "Pannierstraße 64, 12043 Berlin", category_id: category_3.id, opening_hours: "9:30 AM - 5:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705607/roamers_ldmyun.jpg")
spot_38.photo.attach(io: file, filename: "roamers", content_type: "image/jpg")

spot_40 = Spot.create(name: "Hopfenreich", description: "Craft beer bar with a wide selection of local and international brews.", address: "Sorauer Str. 31, 10997 Berlin", category_id: category_1.id, opening_hours: "5:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/hopfenreich_z3ath4.jpg")
spot_40.photo.attach(io: file, filename: "hopfenreich", content_type: "image/jpg")
puts "angry database noises: 10 more spots created"

spot_41 = Spot.create(name: "Bar Raval", description: "Spanish tapas bar with authentic dishes and a lively atmosphere.", address: "Lübbener Str. 1, 10997 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/barraval_vkwxsm.jpg")
spot_41.photo.attach(io: file, filename: "bar raval", content_type: "image/jpg")

spot_42 = Spot.create(name: "Father Carpenter", description: "Popular café known for excellent coffee and brunch.", address: "Münzstraße 21, 10178 Berlin", category_id: category_3.id, opening_hours: "9:00 AM - 4:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/fathercarpenter_gfmgsm.jpg")
spot_42.photo.attach(io: file, filename: "father carpenter", content_type: "image/jpg")

spot_43 = Spot.create(name: "Lichtblick Kino Café", description: "Independent cinema café with a nostalgic ambiance.", address: "Kastanienallee 77, 10435 Berlin", category_id: category_3.id, opening_hours: "10:00 AM - 12:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/lichtblick_dwmwbh.jpg")
spot_43.photo.attach(io: file, filename: "lichtblick", content_type: "image/jpg")

spot_44 = Spot.create(name: "Il Ritrovo", description: "Authentic Italian pizzeria with wood-fired ovens.", address: "Gabriel-Max-Straße 2, 10245 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705605/il_ritrovo_xp5dsk.jpg")
spot_44.photo.attach(io: file, filename: "il ritrovo", content_type: "image/jpg")

spot_45 = Spot.create(name: "Tadshikische Teestube", description: "Unique tearoom offering Tajik-inspired teas and snacks.", address: "Oranienburger Str. 27, 10117 Berlin", category_id: category_3.id, opening_hours: "1:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/teestube_g73cjp.jpg")
spot_45.photo.attach(io: file, filename: "teestube", content_type: "image/jpg")

spot_46 = Spot.create(name: "Zola", description: "Renowned Neapolitan-style pizzeria with simple, fresh ingredients.", address: "Paul-Lincke-Ufer 39-40, 10999 Berlin", category_id: category_2.id, opening_hours: "12:00 PM - 10:30 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/zola_t4sqfj.jpg")
spot_46.photo.attach(io: file, filename: "zola", content_type: "image/jpg")

spot_47 = Spot.create(name: "Dr. To's", description: "Trendy cocktail bar with creative drinks and a laid-back vibe.", address: "Reichenberger Str. 152, 10999 Berlin", category_id: category_1.id, opening_hours: "5:00 PM - 1:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/drtos_vgaboc.jpg")
spot_47.photo.attach(io: file, filename: "dr tos", content_type: "image/jpg")

spot_48 = Spot.create(name: "Golvet", description: "Michelin-starred restaurant offering modern German cuisine with panoramic views.", address: "Potsdamer Str. 58, 10785 Berlin", category_id: category_2.id, opening_hours: "6:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/golvet_o8t0lq.jpg")
spot_48.photo.attach(io: file, filename: "golvet", content_type: "image/jpg")

spot_49 = Spot.create(name: "Villa Neukölln", description: "Lively bar and event space with a vintage vibe.", address: "Hermannstraße 233, 12049 Berlin", category_id: category_1.id, opening_hours: "6:00 PM - 2:00 AM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705608/villaneukoelln_xsgilj.jpg")
spot_49.photo.attach(io: file, filename: "villaneukoelln", content_type: "image/jpg")

spot_50 = Spot.create(name: "Pfefferbräu", description: "Brewpub with freshly brewed beer and hearty German dishes.", address: "Schönhauser Allee 176, 10119 Berlin", category_id: category_1.id, opening_hours: "12:00 PM - 11:00 PM")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/pfefferbraeu_qitusv.jpg")
spot_50.photo.attach(io: file, filename: "pfefferbraeu", content_type: "image/jpg")
puts "this doesnt stop :( - 10 more spots"

spot_51 = Spot.create(name: "Brauhaus Neulich", description: "Cozy brewery with a large selection of beers and homemade German-style dumplings.", address: "Selchower Str. 20, 12049 Berlin", category_id: category_1.id, opening_hours: "15:00 - 01:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705606/neulich_vvkxeh.jpg")
spot_51.photo.attach(io: file, filename: "brauhausneulich", content_type: "image/jpg")

spot_52 = Spot.create(name: "Heckmeck Kneipe", description: "Draught beer in a cozy pub with billiards, a terrace and a map of Berlin on the ceiling.", address: "Eisenacher Str. 111, 10777 Berlin", category_id: category_1.id, opening_hours: "12:00 - 01:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705604/heckmeck_eqlgnc.jpg")
spot_52.photo.attach(io: file, filename: "heckmeck", content_type: "image/jpg")

spot_53 = Spot.create(name: "Lemon Grass Scent", description: "Spring rolls, pho, wok dishes and curries in a chic restaurant with pictures of Asian street scenes.", address: "Schwedter Str. 12, 10119 Berlin", category_id: category_2.id, opening_hours: "12:00 - 22:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550253/lemongrassscent_sksq77.jpg")
spot_53.photo.attach(io: file, filename: "lemongrassscent", content_type: "image/jpg")

spot_54 = Spot.create(name: "Ristorante & Vinobar CaliBocca", description: "Italian pizzas, pasta dishes and aperitifs in a convivial bar with restaurant and dining terrace.", address: "Schlüterstraße 30, 10629 Berlin", category_id: category_2.id, opening_hours: "17:00 - 24:00")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732705603/calibocca_uufn4d.jpg")
spot_54.photo.attach(io: file, filename: "calibocca", content_type: "image/jpg")

spot_55 = Spot.create(name: "Al Contadino Mozzarella Bar & Bottega", description: "Rustic Italian dishes and cheese platters as well as wine and cocktails in a friendly restaurant with exposed brickwork.", address: "Auguststraße 34, 10119 Berlin", category_id: category_2.id, opening_hours: "12:00 - 22:30")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732550254/mozzarellabar_b41ep2.jpg")
spot_55.photo.attach(io: file, filename: "mozarellabar", content_type: "image/jpg")
puts "5 more spots created"
puts "finally done generating spots"


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

user_5 = User.create(first_name: "Evgeny", last_name: "Bezlyzdnyy", email: "evgeny@bezlyzdnyy.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713773/evgeny_wyc4db.png")
user_5.photo.attach(io: file, filename: "evgeny.jpg", content_type: "image/jpg")
puts "user 5 created"

user_6 = User.create(first_name: "Nathalia", last_name: "Ferreira", email: "nathalia@ferreira.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713774/nathalia_vvqdow.jpg")
user_6.photo.attach(io: file, filename: "nathalia.jpg", content_type: "image/jpg")
puts "user 6 created"

user_7 = User.create(first_name: "Fernanda", last_name: "Ngungui", email: "fernanda@ngungui.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713774/fernanda_jdhiqm.jpg")
user_7.photo.attach(io: file, filename: "fernanda.jpg", content_type: "image/jpg")
puts "user 7 created"

user_8 = User.create(first_name: "Piotr", last_name: "Jaworek", email: "piotr@jaworek.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713774/piotre_d3qzqc.jpg")
user_8.photo.attach(io: file, filename: "piotr.jpg", content_type: "image/jpg")
puts "user 8 created"

user_9 = User.create(first_name: "Simone", last_name: "Mine", email: "simone@mine.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713791/simone_k571wd.jpg")
user_9.photo.attach(io: file, filename: "simone.jpg", content_type: "image/jpg")
puts "user 9 created"

user_10 = User.create(first_name: "Sidney", last_name: "Barth", email: "sidney@barth.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713800/Bild_von_iOS_snjv6c.jpg")
user_10.photo.attach(io: file, filename: "sidney.jpg", content_type: "image/jpg")
puts "user 10 created"

user_11 = User.create(first_name: "Sagi", last_name: "Zhumakhan", email: "sagi@zhumakhan.com", password: "123456", description: "")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732713775/sagi_xmxdoj.png")
user_11.photo.attach(io: file, filename: "sagi.jpg", content_type: "image/jpg")
puts "user 11 created"

puts "generating follows now"
follow_1 = Follower.create(asker_id: user_2.id, receiver_id: user_1.id)

follow_2 = Follower.create(asker_id: user_3.id, receiver_id: user_1.id)

follow_3 = Follower.create(asker_id: user_4.id, receiver_id: user_1.id)

follow_4 = Follower.create(asker_id: user_5.id, receiver_id: user_1.id)

follow_5 = Follower.create(asker_id: user_6.id, receiver_id: user_1.id)

follow_6 = Follower.create(asker_id: user_7.id, receiver_id: user_1.id)

follow_7 = Follower.create(asker_id: user_8.id, receiver_id: user_1.id)

follow_8 = Follower.create(asker_id: user_9.id, receiver_id: user_1.id)

follow_9 = Follower.create(asker_id: user_10.id, receiver_id: user_1.id)

follow_10 = Follower.create(asker_id: user_11.id, receiver_id: user_1.id)

follow_11 = Follower.create(asker_id: user_1.id, receiver_id: user_2.id)

follow_12 = Follower.create(asker_id: user_1.id, receiver_id: user_3.id)

follow_13 = Follower.create(asker_id: user_1.id, receiver_id: user_4.id)

follow_14 = Follower.create(asker_id: user_1.id, receiver_id: user_5.id)

follow_15 = Follower.create(asker_id: user_1.id, receiver_id: user_6.id)

follow_16 = Follower.create(asker_id: user_1.id, receiver_id: user_7.id)

follow_17 = Follower.create(asker_id: user_1.id, receiver_id: user_8.id)

follow_18 = Follower.create(asker_id: user_1.id, receiver_id: user_9.id)

follow_19 = Follower.create(asker_id: user_1.id, receiver_id: user_10.id)

follow_20 = Follower.create(asker_id: user_1.id, receiver_id: user_11.id)

follow_21 = Follower.create(asker_id: user_3.id, receiver_id: user_2.id)

follow_22 = Follower.create(asker_id: user_3.id, receiver_id: user_4.id)

follow_23 = Follower.create(asker_id: user_3.id, receiver_id: user_5.id)

follow_24 = Follower.create(asker_id: user_2.id, receiver_id: user_3.id)

follow_25 = Follower.create(asker_id: user_2.id, receiver_id: user_4.id)

follow_26 = Follower.create(asker_id: user_2.id, receiver_id: user_5.id)

follow_27 = Follower.create(asker_id: user_4.id, receiver_id: user_2.id)

follow_28 = Follower.create(asker_id: user_4.id, receiver_id: user_3.id)

follow_29 = Follower.create(asker_id: user_4.id, receiver_id: user_5.id)
puts "Follows have been created"

puts "time for some reviews"
review_1 = Review.create(content: "Cozy, tasty, perfect!", rating: 5, spot_id: spot_1.id, user_id: user_1.id)

review_2 = Review.create(content: "Fresh, authentic, delightful.", rating: 4, spot_id: spot_2.id, user_id: user_1.id)

review_3 = Review.create(content: "Crispy crust, heavenly!", rating: 3, spot_id: spot_3.id, user_id: user_1.id)

review_4 = Review.create(content: "Juicy steaks, top-notch!", rating: 2, spot_id: spot_5.id, user_id: user_1.id)

review_5 = Review.create(content: "Flavor-packed, satisfying!", rating: 5, spot_id: spot_4.id, user_id: user_1.id)

review_6 = Review.create(content: "Freshness galore, yum!", rating: 4, spot_id: spot_6.id, user_id: user_1.id)

review_7 = Review.create(content: "Sweet, indulgent, divine.", rating: 3, spot_id: spot_7.id, user_id: user_1.id)

review_8 = Review.create(content: "Best cocktails ever.", rating: 3, spot_id: spot_13.id, user_id: user_1.id)

review_9 = Review.create(content: "Cozy and charming.", rating: 3, spot_id: spot_23.id, user_id: user_1.id)

review_10 = Review.create(content: "Service was slow.", rating: 3, spot_id: spot_33.id, user_id: user_1.id)
puts "first 10 are done"

review_11 = Review.create(content: "Loved the ambiance!", rating: 5, spot_id: spot_41.id, user_id: user_2.id)

review_12 = Review.create(content: "Perfect date spot.", rating: 4, spot_id: spot_23.id, user_id: user_2.id)

review_13 = Review.create(content: "Drinks were pricey.", rating: 3, spot_id: spot_35.id, user_id: user_2.id)

review_14 = Review.create(content: "Fresh and flavorful.", rating: 4, spot_id: spot_36.id, user_id: user_2.id)

review_15 = Review.create(content: "Not worth the hype.", rating: 3, spot_id: spot_44.id, user_id: user_2.id)

review_16 = Review.create(content: "Great vegan options.", rating: 4, spot_id: spot_17.id, user_id: user_3.id)

review_17 = Review.create(content: "Incredible burgers!", rating: 5, spot_id: spot_38.id, user_id: user_3.id)

review_18 = Review.create(content: "Music was too loud.", rating: 3, spot_id: spot_49.id, user_id: user_3.id)

review_19 = Review.create(content: "Friendly staff!", rating: 4, spot_id: spot_23.id, user_id: user_3.id)

review_20 = Review.create(content: "Highly recommend!", rating: 5, spot_id: spot_43.id, user_id: user_3.id)
puts "another 10 fresh out the oven"

review_21 = Review.create(content: "Mediocre at best.", rating: 3, spot_id: spot_51.id, user_id: user_4.id)

review_22 = Review.create(content: "Outstanding seafood.", rating: 5, spot_id: spot_52.id, user_id: user_4.id)

review_23 = Review.create(content: "Will definitely return!", rating: 4, spot_id: spot_53.id, user_id: user_4.id)

review_24 = Review.create(content: "Good vibes, okay food.", rating: 3, spot_id: spot_45.id, user_id: user_4.id)

review_25 = Review.create(content: "Fantastic happy hour.", rating: 4, spot_id: spot_24.id, user_id: user_4.id)

review_26 = Review.create(content: "Pizza was perfect!", rating: 5, spot_id: spot_19.id, user_id: user_3.id)

review_27 = Review.create(content: "Lovely atmosphere.", rating: 5, spot_id: spot_30.id, user_id: user_4.id)

review_28 = Review.create(content: "Good for groups.", rating: 4, spot_id: spot_33.id, user_id: user_2.id)

review_29 = Review.create(content: "Decent experience.", rating: 3, spot_id: spot_53.id, user_id: user_1.id)

review_30 = Review.create(content: "Would come again.", rating: 4, spot_id: spot_40.id, user_id: user_1.id)
puts "these should be enough"
