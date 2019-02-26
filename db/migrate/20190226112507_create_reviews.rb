class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :error_category
      t.text :comment
      t.integer :ranking
      t.references :student, foreign_key: true
      t.references :speciality, foreign_key: true
      t.references :fiche, foreign_key: true

      t.timestamps
    end
  end
end
