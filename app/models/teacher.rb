class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :specialities, dependent: :destroy
  #has_many :chapters, through: :specialities, dependent: :destroy
  #has_many :fiches, through: :chapters, dependent: :destroy
  mount_uploader :avatar, PhotoUploader

  after_create :send_welcome_email

  private

  def send_welcome_email
    TeacherMailer.bienvenue_prof(self).deliver_now
  end
end
