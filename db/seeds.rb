
User.delete_all

timmo = User.create( email: 'timmo@test.com', password: 'abcd1234' )
christiaan = User.create( email: 'christiaan@test.com', password: 'abcd1234' )
rein = User.create( email: 'rein@test.com', password: 'abcd1234' )
julian = User.create( email: 'julian@test.com', password: 'abcd1234' )

Location.create([
  {name: "Amsterdam"},
  {name: "Utrecht" },
  {name: "Den Haag" },
  {name: "Rotterdam" },
  {name: "Eindhoven" },
  ])

Room.delete_all

Room.create([
  {name: "Room 1", description: "Nice student room ", price: 34,  image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 1 , user: rein},
  {name: "Room 2", description: "Cheap student room ", price: 20, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 1, user: rein},
  {name: "Room 3", description: "Student room for party ppl!", price: 22, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 2, user: rein},
  {name: "Room 4", description: "Student room with a nice view", price: 67, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 4, user: julian},
  {name: "Room 5", description: "Luxurious student room", price: 76, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 2, user: timmo},
  {name: "Room 6", description: "Small student room with nice roommates", price: 34, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 3, user: christiaan},
  {name: "Room 7", description: "Student room with seperate bathroom", price: 45, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 5, user: timmo},
  {name: "Room 8", description: "Student room near the city centre", price: 57, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 4, user: rein},
  {name: "Room 9", description: "Clean student room in nice neighborhood", price: 62, image_url: "https://hd.unsplash.com/photo-1444201983204-c43cbd584d93", location_id: 3, user: julian},
  ])

Booking.delete_all

Booking.create([
  {title: "Booking 1", start_date: "2016-09-09 13:33:12" , end_date: "2016-09-12 13:33:12", room_id: 1, user: rein },
  {title: "Booking 2", start_date: "2016-09-10 13:33:12" , end_date: "2016-09-12 13:33:12", room_id: 2, user: julian },
  {title: "Booking 3", start_date: "2016-09-20 13:33:12" , end_date: "2016-09-21 13:33:12", room_id: 1, user: rein },
  {title: "Booking 4", start_date: "2016-09-12 13:33:12" , end_date: "2016-09-23 13:33:12", room_id: 3, user: timmo },
  {title: "Booking 5", start_date: "2016-09-14 13:33:12" , end_date: "2016-09-19 13:33:12", room_id: 5, user: christiaan },
  ])
