# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



instruments_list = [
  ["Electric Guitar", "https://banner2.kisspng.com/20180130/tow/kisspng-guitar-icon-electric-guitar-5a70e5813eb6c5.0706850115173482252569.jpg"],
  ["Drums", "https://image.flaticon.com/icons/png/512/176/176560.png"],
  ["Vocal", "http://www.myiconfinder.com/uploads/iconsets/256-256-33deacde1806bae8c91b5c2b44369c6e-microphone.png"],
  ["Bass Guitar", "https://cdn2.iconfinder.com/data/icons/music-and-instruments/512/Bass-512.png"],
  ["Keyboard", "https://cdn3.iconfinder.com/data/icons/musical-instruments-18/100/instruments_keyboard-512.png"]
]

genres_list = [
  "Metal","Rock","Hard-Rock","Jazz","Blues","Rap","Pop","Country","Electro"
]

User.create(login:"test1", password:"testtesttest", email:"test@test1.pl", city:"Warszawa")
User.create(login:"test2", password:"testtesttest", email:"test@test2.pl", city: "Warszawa")
User.create(login:"test3", password:"testtesttest", email:"test@test3.pl", city: "Gdańsk")

instruments_list.each do |name, avatar|
  Instrument.create(name:name,avatar:avatar)
end

genres_list.each do |name|
  Genre.create(name:name)
end

