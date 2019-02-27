class AddColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :avatar, :string
    add_column :students, :payed, :boolean
  end
end
