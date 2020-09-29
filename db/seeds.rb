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
u2 = User.create(name: "joe", email_address: "joe@mail.com", password: "pass", location: "houston", age: 22, gender: "male")
u3 = User.create(name: "bob", email_address: "bob@mail.com", password: "pass", location: "houston", age: 22, gender: "male")
u4 = User.create(name: "will", email_address: "will@mail.com", password: "pass", location: "houston", age: 22, gender: "male")

e1 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u1)
e2 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u1)
e3 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u1)
e4 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u2)
e5 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u3)
e6 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u3)
e7 = Election.create(election_name: "student council", img_url: Faker::Avatar.image, election_desc: Faker::Lorem.paragraph(sentence_count: 2), election_type: "popular", election_end_date: '12-12-2020', number_of_votes: 0, user: u4)