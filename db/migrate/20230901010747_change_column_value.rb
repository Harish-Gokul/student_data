class ChangeColumnValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default  :students,:active,to: true
  end
end
