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

theatre_list = [
  "Gopalan mall" ,
  "PVR",
  "Forum mall",
  "Total mall"
]

theatre_list.each do |t|
  Theatre.find_or_create_by( name: t)
end

show_timings = [
  {t_id: Theatre.first.id, time: "9:00",fee: 50},
  {t_id: Theatre.last.id, time: "11:00",fee: 70},
  {t_id: Theatre.first.id, time: "14:30",fee: 100},
  {t_id: Theatre.last.id, time: "17:30",fee: 80},
  
]

#Create show timings
show_timings.each do |t|
  ShowTiming.create(theatre_id: t[:t_id], time: t[:time], fee: t[:fee])
end

movies = Movie.all.pluck(:id)
show_timing_ids = ShowTiming.all.pluck(:id)

screenings  = [
  {t_id: 1, m_id: movies[0], s_date: DateTime.now-1.day, e_date: DateTime.now+3.day, active: true},
  {t_id: 3, m_id: movies[0], s_date: DateTime.now, e_date: DateTime.now+3.day, active: true},
  {t_id: 2, m_id: movies[2], s_date: DateTime.now, e_date: DateTime.now+4.day, active: true},
  {t_id: 4, m_id: movies[2], s_date: DateTime.now, e_date: DateTime.now+5.day, active: true}
  
]
screenings.each do |sc|
  Screening.create(show_timing_id: sc[:t_id], movie_id: sc[:m_id], start_date: sc[:s_date], end_date: sc[:e_date], active: sc[:active]) 
end

10.times do |sl|
  Seat.create(theatre_id: 1)
end

#Create seat limits
20.times do |sl|
  Seat.create(theatre_id: 2)
end

40.times do |sl|
  Seat.create(theatre_id: 3)
end

60.times do |sl|
  Seat.create(theatre_id: 4)
end








