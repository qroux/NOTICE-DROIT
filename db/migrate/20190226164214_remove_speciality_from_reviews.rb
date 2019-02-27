class RemoveSpecialityFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :speciality, foreign_key: true
  end
end
