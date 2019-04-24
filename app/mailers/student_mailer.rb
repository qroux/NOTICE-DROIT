class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.bienvenue.subject
  #
  def bienvenue(student)
    @student = student
    @greeting = "Hi"

    mail to: @student.email, subject: "Bonjour #{@student.first_name}"
    #ajouter metadate subject etc
  end
end
