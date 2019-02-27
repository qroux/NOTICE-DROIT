class Chapter < ApplicationRecord
  belongs_to :speciality
  has_many :fiches, dependent: :destroy

  mount_uploader :content, PhotoUploader
end
