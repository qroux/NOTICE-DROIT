# Preview all emails at http://localhost:3000/rails/mailers/teacher_mailer
class TeacherMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/teacher_mailer/bienvenue_prof
  def bienvenue_prof
    TeacherMailer.bienvenue_prof
  end

end
