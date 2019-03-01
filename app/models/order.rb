class Order < ApplicationRecord
  belongs_to :student, :speciality
end
