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

Student.create!(email: "milena@gmail.com", password: "azerty123", first_name: "milena", last_name: "gaigne", payed?: false)
Student.create!(email: "quentin@gmail.com", password: "azerty123", first_name: "quentin", last_name: "roux", payed?: true)

Speciality.create!(title: "Droit des sociétés", status: "en cours", tag: "Droit des biens")
Speciality.create!(title: "Droit des biens", status: "en ligne", tag: "Droit des régimes matrimonieux")

Chapter.create!(title: "Le capital social", content: "Le capital social est un élément obligatoire pour toutes les sociétés. Il est constitué d’apports en numéraire et/ou d’apports en nature. Le montant du capital social d’une société doit obligatoirement figurer dans les statuts. Le capital social est divisé en titres (actions ou parts sociales suivant la forme juridique de la société) répartis entre les associés et les actionnaires. Le capital social initial d’une société n’est pas intangible, il peut ensuite être modifié par voie d’augmentation ou de réduction de capital.")
Chapter.create!(title: "La propriété", content:"La propriété est la « possession » d'un bien meuble ou immeuble ou d'une production intellectuelle, reconnue et consacrée par une autorité, la société, la loi, la raison générale ou le consentement universel, etc.")
