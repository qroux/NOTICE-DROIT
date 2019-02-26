class CreateFiches < ActiveRecord::Migration[5.2]
  def change
    create_table :fiches do |t|
      t.string :title
      t.text :content
      t.references :teacher, foreign_key: true
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
