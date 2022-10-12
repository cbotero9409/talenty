# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Category.destroy_all
Service.destroy_all
Booking.destroy_all

user1 = User.create(email: "cbotero2709@gmail.com", password: "123456")
user2 = User.create(email: "jancarlos0@gmail.com", password: "123456")
user3 = User.create(email: "claudiad1999@gmail.com", password: "123456")
user4 = User.create(email: "andresiba@gmail.com", password: "123456")

category1 = Category.create(name: "Electricidad residencial")
category2 = Category.create(name: "Albañil")
category3 = Category.create(name: "Jardinería")
category4 = Category.create(name: "Oficios Varios")
category5 = Category.create(name: "Carpintería")

service1 = Service.create(name: "Reparación cableado", price: 30_000, user: user1, category: category1)
service2 = Service.create(name: "Instalación breaker", price: 20_000, user: user1, category: category1)
service3 = Service.create(name: "Reparación de armarios", price: 70_000, user: user2, category: category5)
service4 = Service.create(name: "Arreglo cajones de la cocina", price: 50_000, user: user2, category: category5)
service5 = Service.create(name: "Podar el cesped", price: 90_000, user: user3, category: category3)
service6 = Service.create(name: "Limpieza de la casa", price: 60_000, user: user3, category: category4)

booking1 = Booking.create(price: 30_000, start_date: Date.new(2022,10,13), end_date: Date.new(2022,10,14), status: false, user: user2, service: service1)
booking2 = Booking.create(price: 20_000, start_date: Date.new(2022,11,13), end_date: Date.new(2022,11,14), status: false, user: user3, service: service2)
booking3 = Booking.create(price: 20_000, start_date: Date.new(2022,12,24), end_date: Date.new(2022,12,25), status: false, user: user4, service: service2)
booking4 = Booking.create(price: 45_000, start_date: Date.new(2022,11,15), end_date: Date.new(2022,11,15), status: false, user: user3, service: service3)
booking5 = Booking.create(price: 84_000, start_date: Date.new(2022,10,31), end_date: Date.new(2022,11,01), status: false, user: user1, service: service5)
booking6 = Booking.create(price: 60_000, start_date: Date.new(2022,12,20), end_date: Date.new(2022,12,23), status: false, user: user4, service: service4)
booking7 = Booking.create(price: 50_000, start_date: Date.new(2022,9,13), end_date: Date.new(2022,9,14), status: false, user: user3, service: service4)
booking8 = Booking.create(price: 90_000, start_date: Date.new(2022,11,23), end_date: Date.new(2022,11,28), status: false, user: user1, service: service3)
booking9 = Booking.create(price: 70_000, start_date: Date.new(2022,12,30), end_date: Date.new(2022,12,31), status: false, user: user1, service: service4)
