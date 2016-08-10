# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create([
  {name: "Amsterdam"},
  {name: "Utrecht" },
  {name: "Den Haag" },
  {name: "Rotterdam" },
  {name: "Eindhoven" },
  ])

Room.create([
  {name: "Room 1", description: "Nice student room ", price: 34,  image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 1},
  {name: "Room 2", description: "Cheap student room ", price: 20, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 1},
  {name: "Room 3", description: "Student room for party ppl!", price: 22, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 2},
  {name: "Room 4", description: "Student room with a nice view", price: 67, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 4},
  {name: "Room 5", description: "Luxurious student room", price: 76, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 2},
  {name: "Room 6", description: "Small student room with nice roommates", price: 34, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 3},
  {name: "Room 7", description: "Student room with seperate bathroom", price: 45, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 5},
  {name: "Room 8", description: "Student room near the city centre", price: 57, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 4},
  {name: "Room 9", description: "Clean student room in nice neighborhood", price: 62, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 3},
  ])

Booking.create([
  {title: "Booking 1", start_date: "2016-09-09 13:33:12" , end_date: "2016-09-12 13:33:12", room_id: 1, },
  {title: "Booking 2", start_date: "2016-09-10 13:33:12" , end_date: "2016-09-12 13:33:12", room_id: 2, },
  {title: "Booking 3", start_date: "2016-09-20 13:33:12" , end_date: "2016-09-21 13:33:12", room_id: 1, },
  {title: "Booking 4", start_date: "2016-09-12 13:33:12" , end_date: "2016-09-23 13:33:12", room_id: 3, },
  {title: "Booking 5", start_date: "2016-09-14 13:33:12" , end_date: "2016-09-19 13:33:12", room_id: 5, },
  ])
