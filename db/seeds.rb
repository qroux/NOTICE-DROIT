# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.destroy_all
Student.destroy_all
Speciality.destroy_all
Chapter.destroy_all


Teacher.create!(email: "mary@gmail.com", password: "azerty123", first_name: "mary", last_name: "acard", pseudo: "Maryac")
Teacher.create!(email: "louise@gmail.com", password: "azerty123", first_name: "louise", last_name: "grosgogeat", pseudo: "loulou")

Student.create!(email: "milena@gmail.com", password: "azerty123", first_name: "milena", last_name: "gaigne" )
Student.create!(email: "quentin@gmail.com", password: "azerty123", first_name: "quentin", last_name: "roux")

Speciality.create!(title: "Droit des sociétés", status: "en cours", tag: "Droit des biens", teacher: Teacher.all.sample, price: 650)
Speciality.create!(title: "Droit des biens", status: "en ligne", tag: "Droit des régimes matrimonieux", teacher: Teacher.all.sample,  price: 650)

Chapter.create!(title: "Le capital social", speciality: Speciality.all.sample)
Chapter.create!(title: "La propriété", speciality: Speciality.all.sample)
