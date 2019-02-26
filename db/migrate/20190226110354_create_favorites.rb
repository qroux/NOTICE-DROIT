class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :student, foreign_key: true
      t.references :fiche, foreign_key: true

      t.timestamps
    end
  end
end
