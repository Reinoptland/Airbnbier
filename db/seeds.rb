
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

