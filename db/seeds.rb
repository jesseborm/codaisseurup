User.destroy_all
Event.destroy_all

miriam = User.create(email: "ex@ex.ex", password: "123123")

event = Event.create(
  name: "Cool event",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  location: "Cool place",
  price: 9,
  capacity: 100,
  includes_food: true,
  includes_drinks: true,
  starts_at: DateTime.now,
  ends_at: DateTime.now + 1,
  active: true,
  user: miriam)]
