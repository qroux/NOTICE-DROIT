class TeacherMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.teacher_mailer.bienvenue_prof.subject
  #
  def bienvenue_prof(teacher)
    @teacher = teacher
    @greeting = "Hi"

    mail to: @teacher.email, subject: "Bonjour #{@teacher.first_name} #{@teacher.last_name}"
  end
end
