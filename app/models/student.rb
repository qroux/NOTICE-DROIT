class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy

  mount_uploader :avatar, PhotoUploader

  after_create :send_welcome_email

  private

  def send_welcome_email
    StudentMailer.bienvenue(self).deliver_now
  end
end
