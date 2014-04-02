# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedy = Category.create(name: "Comedy")
animation = Category.create(name: "Animation")
mystery = Category.create(name: "Mystery")


Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_cover: File.open("public/tmp/family_guy.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: comedy)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_cover: File.open("public/tmp/futurama.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: animation)
Video.create(title: "Monk", description: "A quirky detective solves crimes.", small_cover: File.open("public/tmp/monk.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: mystery)
Video.create(title: "South Park", description: "A cartoon that will knock your socks off.", small_cover: File.open("public/tmp/south_park.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: comedy)
Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_cover: File.open("public/tmp/family_guy.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: animation)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_cover: File.open("public/tmp/futurama.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: mystery)

Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_cover: File.open("public/tmp/family_guy.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: animation)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_cover: File.open("public/tmp/futurama.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: mystery)
monk = Video.create(title: "Monk", description: "A quirky detective solves crimes.", small_cover: File.open("public/tmp/monk.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: comedy)
Video.create(title: "South Park", description: "A cartoon that will knock your socks off.", small_cover: File.open("public/tmp/south_park.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: animation)
Video.create(title: "Family Guy", description: "A cartoon about a not-so normal family.", small_cover: File.open("public/tmp/family_guy.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: mystery)
Video.create(title: "Futurama", description: "A cartoon based in future.", small_cover: File.open("public/tmp/futurama.jpg"), large_cover: File.open("public/tmp/play_screen.jpg"), category: comedy)


Craig = User.create(full_name: "Craig Chambers", password: "123", email: "craig@msn.com", admin: true)
Rob = User.create(full_name: "Rob Cham", password: "999", email: "rob@example.com", admin: true)

Review.create(user: Craig, video: monk, rating: 4, content: "This show is good.")
Review.create(user: Craig, video: monk, rating: 3, content: "This show is ok.")


