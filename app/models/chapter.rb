class Chapter < ApplicationRecord
  belongs_to :speciality
  has_many :fiches
end
