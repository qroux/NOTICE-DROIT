Teacher.destroy_all
Student.destroy_all
Speciality.destroy_all
Chapter.destroy_all


# prof 1 matière 1
Teacher.create!(email: "louise@gmail.com", password: "azerty123", first_name: "louise", last_name: "grosgogeat", pseudo: "Louise Grosgogeat", avatar: Rails.root.join("app/assets/images/louise.jpg").open)
Speciality.create!(title: "Droit des sûretés", status: "en ligne", tag: "Droit des régimes matrimoniaux", teacher: Teacher.last,  price: 15)
# prof 1 chap 1 + fiches
Chapter.create!(title: "Les sûretés personnelles", speciality: Speciality.last, content: Rails.root.join("app/assets/images/chap1.pdf").open )
Fiche.create!(title: "Sanction du formalisme", chapter: Chapter.last, content: Rails.root.join("app/assets/images/chap1fiche1.pdf").open )
Fiche.create!(title: "Sanction des conditions de fond", chapter: Chapter.last, content: Rails.root.join("app/assets/images/chap1fiche2.pdf").open )
Fiche.create!(title: "Etendue de l'engagement de la caution", chapter: Chapter.last, content: Rails.root.join("app/assets/images/chap1fiche3.pdf").open )
# prof 1 chap 2 + fiches
Chapter.create!(title: "Les sûretés réelles", speciality: Speciality.last, content: Rails.root.join("app/assets/images/chap2.pdf").open )
Fiche.create!(title: "Les garanties exclusives", chapter: Chapter.last, content: Rails.root.join("app/assets/images/chap2fiche1.pdf").open )
Fiche.create!(title: "Les garanties préférentielles", chapter: Chapter.last, content: Rails.root.join("app/assets/images/chap2fiche2.pdf").open )

# prof 2 matière 2 et 3 + fiches
Teacher.create!(email: "mary@gmail.com", password: "azerty123", first_name: "mary", last_name: "acard", pseudo: "Mary Acard", avatar: Rails.root.join("app/assets/images/marie.jpg").open)
Speciality.create!(title: "Droit du travail", status: "en cours", tag: "Droit des sociétés", teacher: Teacher.last, price: 15)
Chapter.create!(title: "Le contrat de travail", speciality: Speciality.last, content: Rails.root.join("app/assets/images/chapitre-travail.pdf").open )
Fiche.create!(title: "Le lien de subordination", chapter: Chapter.last, content: Rails.root.join("app/assets/images/fiche-travail.pdf").open )
Speciality.create!(title: "Droit des sociétés", status: "en cours", tag: "Droit des biens", teacher: Teacher.last, price: 15)
Chapter.create!(title: "Les apports en société", speciality: Speciality.last)

# etudiant 1 et 2
Student.create!(email: "milena@gmail.com", password: "azerty123", first_name: "milena", last_name: "gaigne", avatar: Rails.root.join("app/assets/images/milena.jpg").open)
Student.create!(email: "quentin@gmail.com", password: "azerty123", first_name: "quentin", last_name: "roux", avatar: Rails.root.join("app/assets/images/quentin.jpeg").open)
