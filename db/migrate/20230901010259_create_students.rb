class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :year_of_passing
      t.integer :rank
      t.boolean :active, default: false
      t.timestamps
    end
  end
end
