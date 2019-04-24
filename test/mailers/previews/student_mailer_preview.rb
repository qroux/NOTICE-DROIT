# Preview all emails at http://localhost:3000/rails/mailers/student_mailer
class StudentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/student_mailer/bienvenue
  def bienvenue
    student = Student.first
    StudentMailer.bienvenue(student)
  end

end
