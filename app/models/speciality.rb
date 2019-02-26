class Speciality < ApplicationRecord
  belongs_to :teacher
  has_many :reviews
  has_many :chapters
end
