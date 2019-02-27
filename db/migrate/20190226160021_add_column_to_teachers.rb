class AddColumnToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :pseudo, :string
    add_column :teachers, :avatar, :string
  end
end
