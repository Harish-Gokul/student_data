class CreatePostsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :posts_tables do |t|
      t.string :title
      t.text :description
      t.integer :student_id
      t.timestamps
    end
  end
end
