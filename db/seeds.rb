# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie_list = [
  "Kala" ,
  "Singam",
  "Merina",
  "Jilla"
]

movie_list.each do |m|
  Movie.find_or_create_by( name: m)
end

theater_list = [
  "Goplan Mall" ,
  "PVR",
  "Forum Mall",
  "Total Mall"
]

theater_list.each do |t|
  Theater.find_or_create_by( name: t)
end




