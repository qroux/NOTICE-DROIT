class RemoveTeacherFromFiches < ActiveRecord::Migration[5.2]
  def change
    remove_reference :fiches, :teacher, foreign_key: true
  end
end
