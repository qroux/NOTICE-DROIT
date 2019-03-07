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


Teacher.create!(email: "mary@gmail.com", password: "azerty123", first_name: "mary", last_name: "acard", pseudo: "Maryac", avatar: Rails.root.join("app/assets/images/marie.jpg").open)
Speciality.create!(title: "Droit du travail", status: "en cours", tag: "Droit des sociétés", teacher: Teacher.last, price: 15)
Chapter.create!(title: "Le contrat de travail", speciality: Speciality.last, content: Rails.root.join("app/assets/images/chapitre-travail.pdf").open )
Fiche.create!(title: "Le lien de subordination", chapter: Chapter.last, content: Rails.root.join("app/assets/images/fiche-travail.pdf").open )
Speciality.create!(title: "Droit des sociétés", status: "en cours", tag: "Droit des biens", teacher: Teacher.last, price: 15)
Chapter.create!(title: "Les apports en société", speciality: Speciality.last)


Teacher.create!(email: "louise@gmail.com", password: "azerty123", first_name: "louise", last_name: "grosgogeat", pseudo: "loulou", avatar: Rails.root.join("app/assets/images/louise.jpg").open)
Speciality.create!(title: "Droit des biens", status: "en ligne", tag: "Droit des régimes matrimoniaux", teacher: Teacher.all.sample,  price: 15)
Chapter.create!(title: "La propriété", speciality: Speciality.last)


Student.create!(email: "milena@gmail.com", password: "azerty123", first_name: "milena", last_name: "gaigne", avatar: Rails.root.join("app/assets/images/milena.jpg").open)
Student.create!(email: "quentin@gmail.com", password: "azerty123", first_name: "quentin", last_name: "roux", avatar: Rails.root.join("app/assets/images/quentin.jpeg").open)
