class Speciality < ApplicationRecord
  belongs_to :teacher
  has_many :chapters, dependent: :destroy
end
