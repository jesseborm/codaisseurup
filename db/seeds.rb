Profile.destroy_all
Registration.destroy_all
Photo.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all

modern_and_minimal = Category.create(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create(name: "Warm and Cozy")
room_with_a_view = Category.create(name: "Room with a View")
elegant_and_ornate = Category.create(name: "Elegant and Ornate")
a_mans_touch = Category.create(name: "A Man's Touch")
white_washed = Category.create(name: "White Washed")
tempting_terrace = Category.create(name: "Tempting Terrace")

miriam = User.create(email: "ex@ex.ex", password: "123123")
jesse  = User.create(email: "test@test.nl", password: "123123")


# Photo
photo1 = Photo.create(remote_image_url: "https://lh6.ggpht.com/DcbOYdaNmHBKDsMBXPWy9AXS7h6XbJ4U53ymUwkAAelCQfAJO5QkHnLar0zuiWW1WmI=w300")
photo2 = Photo.create(remote_image_url: "https://d1zqayhc1yz6oo.cloudfront.net/e438313a0e8035642bb7be8c754316db.png")
photo3 = Photo.create(remote_image_url: "http://static.fjcdn.com/pictures/C+h+random+comic+generator+gems+just+a+bunch_82c6f5_5383285.png")



event1 = Event.create(
  name: "Cool event",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  location: "Cool place", price: 9, capacity: 100, includes_food: true, includes_drinks: true, starts_at: DateTime.now, ends_at: DateTime.now + 1, active: true,  user: miriam, categories: [warm_and_cozy, elegant_and_ornate, white_washed], photos: [photo1])
event2 = Event.create(
  name: "Stupid event",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", location: "Dull place", price: 20, capacity: 20,  includes_food: true, includes_drinks: false, starts_at: DateTime.now, ends_at: DateTime.now + 2, active: true,
  user: miriam, categories: [sleek_and_sophisticated, white_washed, a_mans_touch], photos: [photo2])
event3 = Event.create(
  name: "Great event",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", location: "Great place", price: 10, capacity: 200,  includes_food: true, includes_drinks: true, starts_at: DateTime.now, ends_at: DateTime.now + 2, active: true,
  user: jesse, categories: [sleek_and_sophisticated, white_washed, a_mans_touch], photos: [photo2, photo3])

  ## Registrations

Registration.create(event: event1, user: miriam, price: 50, total_price: 100, guest_count: 2)
Registration.create(event: event1, user: miriam, price: 50, total_price: 100, guest_count: 1)
