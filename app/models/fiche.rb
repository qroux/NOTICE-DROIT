class Fiche < ApplicationRecord
  belongs_to :chapter

  has_many :reviews, dependent: :destroy

  mount_uploader :content, PhotoUploader
end
