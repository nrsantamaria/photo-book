# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.new
user.username = "james"
user.email = "james@gmail.com"
user.password = '123456'
user.admin = true
user.save!



50.times do |index|
  User.create!(username: Faker::HarryPotter.character,
                  email: Faker::Internet.email,
                  password: Faker::Crypto.md5,
                  avatar: File.new('app/assets/images/missing.png'))
end

p "Created #{User.count} users"

Image.destroy_all

250.times do |index|
  Image.create!(name: Faker::Book.title,
                description: Faker::Hipster.sentence(10, false, 4),
                avatar: File.new('app/assets/images/missing.png'),
                user_id: Faker::Number.between(1, 50))
end

p "Created #{Image.count} images"

Comment.destroy_all

1500.times do |index|
  Comment.create!(author: Faker::HarryPotter.character,
                content: Faker::Hipster.sentence(10, false, 4),
                image_id: Faker::Number.between(1, 250))
end

p "Created #{Comment.count} comments"
