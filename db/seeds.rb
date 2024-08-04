# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    provider: "email",
    uid: "user1@example.com",
    name: "ユーザー1",
    gender: 0,
    email: "user1@example.com",
    birthday: "1990-01-01",
    prefecture: 1,
  },
  {
    provider: "email",
    uid: "user2@example.com",
    name: "ユーザー2",
    gender: 1,
    email: "user2@example.com",
    birthday: "1990-01-02",
    prefecture: 1,
  },
  {
    provider: "email",
    uid: "user3@example.com",
    name: "ユーザー3",
    gender: 0,
    email: "user3@example.com",
    birthday: "1990-01-03",
    prefecture: 1,
  },
  {
    provider: "email",
    uid: "user4@example.com",
    name: "ユーザー4",
    gender: 1,
    email: "user4@example.com",
    birthday: "1990-01-04",
    prefecture: 1,
  }
]

users.each do |user_data|
  user = User.new(user_data)
  user.password = "password"
  user.password_confirmation = "password"
  user.save!
end
