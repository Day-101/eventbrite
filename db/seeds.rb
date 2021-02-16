User.destroy_all
10.times do |i|
  User.create!(
    first_name: Faker::Name.first_name  ,
    last_name: Faker::Name.last_name  ,
    email: "user#{i}" + "@yopmail.com",
    password: "000000",
    description: Faker::Lorem.paragraph_by_chars(number: rand(20..50)))
end

Event.destroy_all
10.times do
  Event.create!(
    title: Faker::TvShows::SiliconValley.invention,
    description: Faker::Lorem.paragraph_by_chars(number: rand(100..500)),
    start_date: Faker::Date.between(from: "2021-03-01", to: "2021-03-31"),
    duration: [30, 60, 90, 120].sample,
    price: rand(1..1000),
    location: Faker::Address.city,
    host: User.all.sample)
end

Attendance.destroy_all
10.times do
  Attendance.create!(
    event: Event.all.sample),
    user: User.all.sample
end