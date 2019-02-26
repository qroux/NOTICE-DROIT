class Fiche < ApplicationRecord
  belongs_to :teacher
  belongs_to :chapter

  has_many :reviews
  has_many :favorites
end
