class Fiche < ApplicationRecord
  belongs_to :chapter

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
