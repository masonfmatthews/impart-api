# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

m = User.create!(name: "Mason", email: "mason.f.matthews@gmail.com")
Clip.create!(name: "First Clip", user: m)
Clip.create!(name: "Next Clip", user: m)
