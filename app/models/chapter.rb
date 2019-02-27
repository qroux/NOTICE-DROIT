class Chapter < ApplicationRecord
  belongs_to :speciality
  has_many :fiches, class_name: "Fiche", dependent: :destroy

  mount_uploader :content, PhotoUploader

  accepts_nested_attributes_for :fiches
end
