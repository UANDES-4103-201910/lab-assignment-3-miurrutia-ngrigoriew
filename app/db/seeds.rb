# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Nicolas", lastname: "Grigoriew", email: "nmgrigoriew@miuandes.cl", phone:56912345, password: "1234", address: "Monsenor Alvaro 12")
User.create(name: "Martin", lastname: "Concha", email: "maconcha@miuandes.cl", phone:56912335, password: "1234", address: "Monsenor Alvaro 123")
User.create(name: "Tomas", lastname: "Garcia", email: "tgarciam@miuandes.cl", phone:56912225, password: "1234", address: "Monsenor Alvaro 1234")
User.create(name: "Nicolas", lastname: "Aspee",email: "naspee@miuandes.cl", phone:56999999, password: "1234", address: "Monsenor Alvaro 12345")
User.create(name: "Maria Ignacia", lastname: "Urrutia", email: "maurrutia@miuandes.cl", phone:56911111, password: "1234",address: "Monsenor Alvaro 123456")


Venue.create(name: "Casa", address: "Berna 123", capacity: 150)
Venue.create(name: "EdificioCiencias", address: "Uandes 123", capacity: 1500)
Venue.create(name: "La Piojera", address: "Aillavilu 1030", capacity: 250)

Event.create(name: "CasaMauro", description: "Venganomas", start_date: DateTime.now(), event_venue: Venue.find(1).id)
Event.create(name: "CafeConcert", description: "Dondeestacamila", start_date: DateTime.new(2019,10,3), event_venue: Venue.find(2).id)
Event.create(name: "Fonda", description: "Terremotosx500", start_date: DateTime.new(2019,9,15), event_venue: Venue.find(3).id)


Type.create(event: Event.find(1).id, price: 5000, category: "Entrada Simple")
Type.create(event: Event.find(1).id, price: 8000, category: "Entrada VIP")
Type.create(event: Event.find(1).id, price: 1000, category: "Staff")

Type.create(event: Event.find(2).id, price: 150000, category: "Cancha")
Type.create(event: Event.find(2).id, price: 250000, category: "Cancha VIP")
Type.create(event: Event.find(2).id, price: 350000, category: "Premium")


Type.create(event: Event.find(3).id, price: 1500, category: "Simple")
Type.create(event: Event.find(3).id, price: 2500, category: "Simple+Cover")
Type.create(event: Event.find(3).id, price: 5000, category: "Barra Libre")


TOrder.create(total: 5000, user_id: User.find(1).id, ticket_id: Type.find(1).id)
TOrder.create(total: 150000, user_id: User.find(1).id, ticket_id: Type.find(4).id)
TOrder.create(total: 1500, user_id: User.find(1).id, ticket_id: Type.find(7).id)

TOrder.create(total: 8000, user_id: User.find(2).id, ticket_id: Type.find(2).id)
TOrder.create(total: 250000, user_id: User.find(2).id, ticket_id: Type.find(5).id)
TOrder.create(total: 2500, user_id: User.find(2).id, ticket_id: Type.find(8).id)

TOrder.create(total: 1000, user_id: User.find(3).id, ticket_id: Type.find(3).id)
TOrder.create(total: 350000, user_id: User.find(3).id, ticket_id: Type.find(6).id)
TOrder.create(total: 5000, user_id: User.find(3).id, ticket_id: Type.find(9).id)