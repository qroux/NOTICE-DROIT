class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :title
      t.string :status
      t.string :tag
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
