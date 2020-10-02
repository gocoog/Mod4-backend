# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Election.destroy_all
User.destroy_all

u1 = User.create(name: "john", email_address: "john@mail.com", password: "pass", location: "houston", age: 22, gender: "male")
u2 = User.create(name: "joe", email_address: "joe@mail.com", password: "pass", location: "denver", age: 22, gender: "male")
u3 = User.create(name: "tina", email_address: "tina@mail.com", password: "pass", location: "houston", age: 33, gender: "female")
u4 = User.create(name: "will", email_address: "will@mail.com", password: "pass", location: "miami", age: 24, gender: "male")
u5 = User.create(name: "mary", email_address: "mary@mail.com", password: "pass", location: "miami", age: 55, gender: "female")
u6 = User.create(name: "bob", email_address: "bob@mail.com", password: "pass", location: "new york", age: 33, gender: "male")
u7 = User.create(name: "robert", email_address: "robert@mail.com", password: "pass", location: "las vegas", age: 22, gender: "male")
u8 = User.create(name: "josh", email_address: "josh@mail.com", password: "pass", location: "las vegas", age: 34, gender: "male")
u9 = User.create(name: "diana", email_address: "diana@mail.com", password: "pass", location: "chicago", age: 21, gender: "female")
u10 = User.create(name: "abby", email_address: "abby@mail.com", password: "pass", location: "austin", age: 22, gender: "female")


e1 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 3, user: u1)
e2 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 1, user: u1)
e3 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 1, user: u1)
e4 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u2)
e5 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 2, user: u3)
e6 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u3)
e7 = Election.create(election_name: Faker::Name.name , img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u4)

v1 = Vote.create(user_id: u1.id, election_id: e1.id)
v2 = Vote.create(user_id: u1.id, election_id: e2.id)
v3 = Vote.create(user_id: u1.id, election_id: e3.id)
v4 = Vote.create(user_id: u2.id, election_id: e1.id)
v5 = Vote.create(user_id: u3.id, election_id: e5.id)
v6 = Vote.create(user_id: u3.id, election_id: e1.id)
v7 = Vote.create(user_id: u1.id, election_id: e5.id)