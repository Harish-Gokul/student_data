class AddColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students,:email,:string
  end
end
