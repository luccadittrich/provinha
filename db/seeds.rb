# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'a@a', password: '123456', teacher: true, president: false, first_name: 'Ana', last_name: 'Alice', score: 0)
User.create!(email: 'c@c', password: '123456', teacher: false, president: true, first_name: 'Camila', last_name: 'Esteves', score:0)
User.create!(email: 'd@d', password: '123456', teacher: false, president: false, first_name: 'Danilo', last_name: 'Isaac', score: 0)
User.create!(email: 'e@e', password: '123456', teacher: false, president: false, first_name: 'Eliane', last_name: 'Josh', score: 0)
User.create!(email: 'f@f', password: '123456', teacher: false, president: false, first_name: 'Fernando', last_name: 'Predes', score: 0)
User.create!(email: 'h@h', password: '123456', teacher: false, president: false, first_name: 'Helena', last_name: 'de Tróia', score: 0)
User.create!(email: 'i@i', password: '123456', teacher: false, president: false, first_name: 'Igor', last_name: 'de Esparta', score: 0)
