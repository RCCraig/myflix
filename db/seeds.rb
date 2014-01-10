# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_image: "/tmp/family_guy.jpg", large_image: "/tmp/play_screen.jpg", category_id: 1)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_image: "/tmp/futurama.jpg", large_image: "/tmp/play_screen.jpg", category_id: 2)
Video.create(title: "Monk", description: "A quirky detective solves crimes.", small_image: "/tmp/monk.jpg", large_image: "/tmp/play_screen.jpg", category_id: 3)
Video.create(title: "South Park", description: "A cartoon that will knock your socks off.", small_image: "/tmp/south_park.jpg", large_image: "/tmp/play_screen.jpg", category_id: 1)
Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_image: "/tmp/family_guy.jpg", large_image: "/tmp/play_screen.jpg", category_id: 2)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_image: "/tmp/futurama.jpg", large_image: "/tmp/play_screen.jpg", category_id: 3)

Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_image: "/tmp/family_guy.jpg", large_image: "/tmp/play_screen.jpg", category_id: 3)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_image: "/tmp/futurama.jpg", large_image: "/tmp/play_screen.jpg", category_id: 2)
Monk = Video.create(title: "Monk", description: "A quirky detective solves crimes.", small_image: "/tmp/monk.jpg", large_image: "/tmp/play_screen.jpg", category_id: 1)
Video.create(title: "South Park", description: "A cartoon that will knock your socks off.", small_image: "/tmp/south_park.jpg", large_image: "/tmp/play_screen.jpg", category_id: 3)
Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_image: "/tmp/family_guy.jpg", large_image: "/tmp/play_screen.jpg", category_id: 2)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_image: "/tmp/futurama.jpg", large_image: "/tmp/play_screen.jpg", category_id: 1)


Category.create(name: "Comedy")
Category.create(name: "Animation")
Category.create(name: "Mystery")

Craig = User.create(full_name: "Craig Chambers", password: "password", email: "craig@msn.com")

Review.create(user: Craig, video: Monk, rating: 4, content: "This show is good.")
Review.create(user: Craig, video: Monk, rating: 3, content: "This show is ok.")


