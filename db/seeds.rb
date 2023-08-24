50.times do |n|
  User.create(
    first_nm: Faker::Name.first_name,
    last_nm: Faker::Name.last_name,
    age: Faker::Number.number(digits: 2),
    gender: Faker::Gender.binary_type
  )
end
