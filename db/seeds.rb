# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chore.destroy_all
User.destroy_all
Location.destroy_all

house = Location.create(name: "Cardboard House", creator: 6)

kim = User.create(username: "kim", password: "123", first_name:"Kim", last_name:"Khong", email:"kim@gmail.com", location_id: house.id)
diana = User.create(username: "diana", password: "123", first_name:"Diana", last_name:"Wendt", email:"diana@gmail.com", location_id: house.id)
jonny = User.create(username: "jonny", password: "123", first_name:"Jonny", last_name:"Riecke", email:"jonny@gmail.com", location_id: house.id)

sweep = Chore.create(name: "Sweep", description: "Sweep and mop the kitchen", location_id: house.id, user_id: kim.id, day: "MON", icon: "broom", completed: false)
vacuum = Chore.create(name: "Vacuum", description: "Vaccuum basement and stairs", location_id: house.id, user_id: diana.id, day: "TUE", icon: "nil", completed: false)
water = Chore.create(name: "Water", description: "Water the backyard plants", location_id: house.id, user_id: jonny.id, day: "WED", icon: "leaf", completed: false)
trash = Chore.create(name: "Trash", description: "Take trash out", location_id: house.id, user_id: nil, day: "", icon: "trash", completed: false)
compost = Chore.create(name: "Compost", description: "Take compost out", location_id: house.id, user_id: nil, day: "", icon: "hotdog", completed: false)
bathroom = Chore.create(name: "Bathroom", description: "Clean the bathroom", location_id: house.id, user_id: nil, day: "", icon: "bath", completed: false)
litterbox = Chore.create(name: "Litter Box", description: "Take compost out", location_id: house.id, user_id: jonny.id, day: "", icon: "paw", completed: false)