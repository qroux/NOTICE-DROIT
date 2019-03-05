class Speciality < ApplicationRecord
  belongs_to :teacher
  has_many :chapters, dependent: :destroy
  has_many :orders

  monetize :price_cents

  include PgSearch
  pg_search_scope :kinda_spelled_like,
                  against: :title,
                  using: { trigram: {
                      threshold: 0.5
                    }
                  }
end
