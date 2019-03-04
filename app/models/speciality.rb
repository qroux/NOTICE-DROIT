class Speciality < ApplicationRecord
  belongs_to :teacher
  has_many :chapters, dependent: :destroy
  has_many :orders

  monetize :price_cents
end
