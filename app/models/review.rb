class Review < ApplicationRecord
  belongs_to :student
  belongs_to :speciality
  belongs_to :fiche
end
