# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

Message.destroy_all
Chatroom.destroy_all
Review.destroy_all
Booking.destroy_all
Service.destroy_all
Category.destroy_all
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('chatrooms')

user1 = User.create!(email: "cbotero2709@gmail.com", password: "A#123456", first_name: "Camilo", last_name: "Botero", address: "Avenue 17 #7-272", phone: "3216317798", description: "Electrician technician with almost 10 years of experience in the management and installation of different old and new electrical systems and install points of light, all kinds of panels, electrical assembly of motors, plates and all kinds of circuits. My knowledge and experience have always made me emphasize professionalism above anything else. I have been working in countries like Iceland and Norway. Fluent in English.")
user2 = User.create!(email: "jancarlos0@gmail.com", password: "A#123456", first_name: "Jan", last_name: "Diaz", address: "Street 50 #81-33", phone: "3234547654", description: "Skilled and passionate carpenter with over 10 years experience in residential and commercial construction. Positive reputation for quality work, on-time construction and projects completed at or below budget. Excellent ability to communicate with clients and bring their visions and dreams to life. Knowledge of all aspects of construction, including plumbing and electrical. Design, monitoring and ensuring all structures are compliant. Specializing in custom cabinetry, designer furniture, and foundation repair and installation.")
user3 = User.create!(email: "claudiad1999@gmail.com", password: "A#123456", first_name: "Claudia", last_name: "Enriquez", address: "Street 80 #66b-30", phone: "3234856969", description: "Soy una buena jardinera, amo las plantas")
user4 = User.create!(email: "andresiba@gmail.com", password: "A#123456", first_name: "Andres", last_name: "ibarguen", address: "Street 12 # 6-58", phone: "3154657890", description: "Conocimiento en todo tipo de madera y cualquier trabajo en carpintería")
user5 = User.create!(email: "andres1@gmail.com", password: "A#123456", first_name: "Felipe", last_name: "Espinoza", address: "Street 30 #70-31")
user6 = User.create!(email: "andres2@gmail.com", password: "A#123456", first_name: "Andres", last_name: "Escobar", address: "Street 31 #71-32")
user7 = User.create!(email: "andres3@gmail.com", password: "A#123456", first_name: "karla", last_name: "Gomez", address: "Street 32 #72-33")
user8 = User.create!(email: "andres4@gmail.com", password: "A#123456", first_name: "Patricia", last_name: "Jimenez", address: "Street 33 #73-34")
user9 = User.create!(email: "andres5@gmail.com", password: "A#123456", first_name: "Laura", last_name: "bedoya", address: "Street 34 #74-35")
user10 = User.create!(email: "andres6@gmail.com", password: "A#123456", first_name: "Carlos", last_name: "palomo", address: "Street 35 #75-35")
user11 = User.create!(email: "andres7@gmail.com", password: "A#123456", first_name: "Boris", last_name: "cabal", address: "Street 36 #76-37")
user12 = User.create!(email: "andres8@gmail.com", password: "A#123456", first_name: "Hector", last_name: "Figueroa", address: "Street 37 #77-38")
user13 = User.create!(email: "andres9@gmail.com", password: "A#123456", first_name: "Camila", last_name: "Galvis", address: "Street 38 #78-39")
user14 = User.create!(email: "andres10@gmail.com", password: "A#123456", first_name: "Mauricio", last_name: "Restrepo", address: "Street 39 #79-40")
user15 = User.create!(email: "andres11@gmail.com", password: "A#123456", first_name: "Diego", last_name: "Solari", address: "Street 40 #80-41")
user16 = User.create!(email: "andres12@gmail.com", password: "A#123456", first_name: "Camilo", last_name: "Calderon", address: "Street 41 #81-42")
user17 = User.create!(email: "andres13@gmail.com", password: "A#123456", first_name: "Valentina", last_name: "Ochoa", address: "Street 42 #82-43")
user18 = User.create!(email: "andres14@gmail.com", password: "A#123456", first_name: "Silvia", last_name: "Ramirez", address: "Street 43 #83-44")
user19 = User.create!(email: "andres15@gmail.com", password: "A#123456", first_name: "Yeison", last_name: "Cardenas", address: "Street 44 #84-45")
user20 = User.create!(email: "andres16@gmail.com", password: "A#123456", first_name: "Gustavo", last_name: "Cabello", address: "Street 45 #85-46")

user1.photo.attach(io: URI.open('app/assets/images/J.png'), filename: "nes.png", content_type: "image/png")
user1.photos_services.attach(io: URI.open('app/assets/images/work1.png'), filename: "1.png", content_type: "image/png")
user1.photos_services.attach(io: URI.open('app/assets/images/work2.png'), filename: "2.png", content_type: "image/png")
user1.photos_services.attach(io: URI.open('app/assets/images/work3.png'), filename: "3.png", content_type: "image/png")
user1.photos_services.attach(io: URI.open('app/assets/images/work4.png'), filename: "4.png", content_type: "image/png")
user1.save
user2.photo.attach(io: URI.open('app/assets/images/N.png'), filename: "2.png", content_type: "image/png")
user2.photos_services.attach(io: URI.open('app/assets/images/S.png'), filename: "1.png", content_type: "image/png")
user2.photos_services.attach(io: URI.open('app/assets/images/T.png'), filename: "2.png", content_type: "image/png")
user2.photos_services.attach(io: URI.open('app/assets/images/V.png'), filename: "3.png", content_type: "image/png")
user2.photos_services.attach(io: URI.open('app/assets/images/W.png'), filename: "4.png", content_type: "image/png")
user2.save
user3.photo.attach(io: URI.open('app/assets/images/ingc.jpg'), filename: "2.png", content_type: "image/png")
user3.save
user4.photo.attach(io: URI.open('app/assets/images/X.jpg'), filename: "2.png", content_type: "image/png")
user4.save
user5.photo.attach(io: URI.open('app/assets/images/E.png'), filename: "2.png", content_type: "image/png")
user5.save
user6.photo.attach(io: URI.open('app/assets/images/F.png'), filename: "2.png", content_type: "image/png")
user6.save
user7.photo.attach(io: URI.open('app/assets/images/X.jpg'), filename: "2.png", content_type: "image/png")
user7.save
user8.photo.attach(io: URI.open('app/assets/images/C.png'), filename: "2.png", content_type: "image/png")
user8.save
user9.photo.attach(io: URI.open('app/assets/images/D.png'), filename: "2.png", content_type: "image/png")
user9.save
user10.photo.attach(io: URI.open('app/assets/images/G.png'), filename: "2.png", content_type: "image/png")
user10.save
user11.photo.attach(io: URI.open('app/assets/images/H.png'), filename: "2.png", content_type: "image/png")
user11.save
user12.photo.attach(io: URI.open('app/assets/images/I.png'), filename: "2.png", content_type: "image/png")
user12.save
user13.photo.attach(io: URI.open('app/assets/images/O.png'), filename: "2.png", content_type: "image/png")
user13.save
user14.photo.attach(io: URI.open('app/assets/images/K.png'), filename: "2.png", content_type: "image/png")
user14.save
user15.photo.attach(io: URI.open('app/assets/images/L.png'), filename: "2.png", content_type: "image/png")
user15.save
user16.photo.attach(io: URI.open('app/assets/images/M.png'), filename: "2.png", content_type: "image/png")
user16.save
user17.photo.attach(io: URI.open('app/assets/images/R.png'), filename: "2.png", content_type: "image/png")
user17.save
user18.photo.attach(io: URI.open('app/assets/images/P.png'), filename: "2.png", content_type: "image/png")
user18.save
user19.photo.attach(io: URI.open('https://media.karousell.com/media/photos/products/2022/3/14/carpenter__tukang_kayu_for_kit_1647276238_37d8e8ad.jpg'), filename: "2.png", content_type: "image/png")
user19.save
user20.photo.attach(io: URI.open('https://img.lovepik.com/photo/50166/7573_lovepik-carpenter-male-worker-image-photo-image_wh300.jpg'), filename: "2.png", content_type: "image/png")
user20.save


category1 = Category.create!(name: "Electricians")
category2 = Category.create!(name: "Brickwork")
category3 = Category.create!(name: "Gardening")
category4 = Category.create!(name: "Various Trades")
category5 = Category.create!(name: "Carpentry")

service1 = Service.create!(name: "Wiring repair", duration: 30, price: 30_000, user: user1, category: category1)
service2 = Service.create!(name: "Breaker installation", duration: 60, price: 20_000, user: user1, category: category1)
service3 = Service.create!(name: "Cabinet repair", duration: 120, price: 70_000, user: user2, category: category5)
service4 = Service.create!(name: "Arrangement of kitchen drawers", duration: 180, price: 50_000, user: user2, category: category5)
service5 = Service.create!(name: "Lawn mowing", duration: 240, price: 90_000, user: user3, category: category3)
service6 = Service.create!(name: "House cleaning", duration: 360, price: 60_000, user: user3, category: category4)
service7 = Service.create!(name: "installation of sensors", duration: 240, price: 80_000, user: user1, category: category1)
service8 = Service.create!(name: "welding of parts", duration: 120, price: 100_000, user: user1, category: category1)
service9 = Service.create!(name: "repair of domestic equipment", duration: 140, price: 90_000, user: user1, category: category1)
service10 = Service.create!(name: "repair of light poles", duration: 200, price: 70_000, user: user1, category: category1)
service11 = Service.create!(name: "replacement and maintenance of light bulbs", duration: 220, price: 120_000, user: user1, category: category1)
service12 = Service.create!(name: "panel installation", duration: 360, price: 200_000, user: user1, category: category1)
service13 = Service.create!(name: "electrical drawings design", duration: 100, price: 150_000, user: user1, category: category1)
service14 = Service.create!(name: "creating doors, window frames", duration: 120, price: 100_000, user: user2, category: category5)
service16 = Service.create!(name: "assembling and repairing furniture", duration: 120, price: 150_000, user: user2, category: category5)
service17 = Service.create!(name: "construction of structures, platforms and scaffolding", duration: 120, price: 170_000, user: user2, category: category5)
service18 = Service.create!(name: "Wiring repair", duration: 30, price: 30_000, user: user5, category: category1)
service19 = Service.create!(name: "Breaker installation", duration: 60, price: 20_000, user: user6, category: category1)
service20 = Service.create!(name: "installation of sensors", duration: 240, price: 80_000, user: user7, category: category1)
service21 = Service.create!(name: "welding of parts", duration: 120, price: 100_000, user: user8, category: category1)
service22 = Service.create!(name: "repair of domestic equipment", duration: 140, price: 90_000, user: user9, category: category1)
service23 = Service.create!(name: "repair of light poles", duration: 200, price: 70_000, user: user10, category: category1)
service24 = Service.create!(name: "replacement and maintenance of light bulbs", duration: 220, price: 120_000, user: user11, category: category1)
service25 = Service.create!(name: "panel installation", duration: 360, price: 200_000, user: user12, category: category1)
service26 = Service.create!(name: "Cabinet repair", duration: 120, price: 70_000, user: user13, category: category5)
service27 = Service.create!(name: "Arrangement of kitchen drawers", duration: 180, price: 50_000, user: user14, category: category5)
service28 = Service.create!(name: "creating doors, window frames", duration: 120, price: 100_000, user: user15, category: category5)
service29 = Service.create!(name: "assembling and repairing furniture", duration: 120, price: 150_000, user: user16, category: category5)
service30 = Service.create!(name: "construction of structures, platforms and scaffolding", duration: 120, price: 170_000, user: user17, category: category5)
service31 = Service.create!(name: "creating doors, window frames", duration: 120, price: 100_000, user: user18, category: category5)
service32 = Service.create!(name: "Arrangement of kitchen drawers", duration: 180, price: 50_000, user: user19, category: category5)
service33 = Service.create!(name: "Cabinet repair", duration: 120, price: 70_000, user: user20, category: category5)


booking1 = Booking.create!(price: 30_000, start_date: Date.new(2021,10,13), end_date: Date.new(2021,10,14), status: false, user: user2, service: service1)
booking2 = Booking.create!(price: 20_000, start_date: Date.new(2021,11,13), end_date: Date.new(2021,11,14), status: false, user: user3, service: service2)
booking3 = Booking.create!(price: 20_000, start_date: Date.new(2021,12,24), end_date: Date.new(2021,12,25), status: false, user: user4, service: service2)
booking4 = Booking.create!(price: 45_000, start_date: Date.new(2022,11,15), end_date: Date.new(2022,11,16), status: false, user: user3, service: service3)
booking5 = Booking.create!(price: 84_000, start_date: Date.new(2022,10,31), end_date: Date.new(2022,11,01), status: false, user: user1, service: service5)
booking6 = Booking.create!(price: 60_000, start_date: Date.new(2022,12,20), end_date: Date.new(2022,12,23), status: false, user: user4, service: service4)
booking7 = Booking.create!(price: 50_000, start_date: Date.new(2022,9,13), end_date: Date.new(2022,9,14), status: false, user: user3, service: service4)
booking8 = Booking.create!(price: 90_000, start_date: Date.new(2022,11,23), end_date: Date.new(2022,11,28), status: false, user: user1, service: service3)
booking9 = Booking.create!(price: 70_000, start_date: Date.new(2022,12,30), end_date: Date.new(2022,12,31), status: false, user: user1, service: service4)
booking10 = Booking.create!(price: 84_000, start_date: Date.new(2022,10,31), end_date: Date.new(2022,11,01), status: false, user: user1, service: service6)
booking11 = Booking.create!(price: 84_000, start_date: Date.new(2022,9,3), end_date: Date.new(2022,9,4), status: false, user: user1, service: service6)
booking12 = Booking.create!(price: 120_000, start_date: Date.new(2022,11,8), end_date: Date.new(2022,11,10), status: false, user: user2, service: service7)
booking13 = Booking.create!(price: 100_000, start_date: Date.new(2022,11,5), end_date: Date.new(2022,11,8), status: false, user: user2, service: service9)
booking14 = Booking.create!(price: 200_000, start_date: Date.new(2022,11,7), end_date: Date.new(2022,11,9), status: false, user: user2, service: service12)
booking15 = Booking.create!(price: 150_000, start_date: Date.new(2022,11,10), end_date: Date.new(2022,11,12), status: false, user: user2, service: service13)


review1 = Review.create!(content: "It was divine", rating: 5, user: user3, booking: booking5)
review2 = Review.create!(content: "It looked horrible", rating: 1, user: user3, booking: booking10)
review3 = Review.create!(content: "It was regular", rating: 3, user: user3, booking: booking11)
review4 = Review.create!(content: "It was perfect work", rating: 5, user: user1, booking: booking1)
review5 = Review.create!(content: "great job", rating: 4, user: user1, booking: booking2)
review6 = Review.create!(content: "wonderful job and excellent person", rating: 4, user: user1, booking: booking3)

chatroom = Chatroom.create!(name: "Booking")
