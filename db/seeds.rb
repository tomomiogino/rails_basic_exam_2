50.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               image: open("./public/uploads/user/image/1/41vaDIBogsL.jpg")
               )
end
