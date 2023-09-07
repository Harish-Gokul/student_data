class ChangeTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :posts_tables,:posts
  end
end
