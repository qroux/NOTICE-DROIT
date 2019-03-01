class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.jsonb :payment
      t.references :student, foreign_key: true
      t.references :speciality, foreign_key: true

      t.timestamps
    end
  end
end
