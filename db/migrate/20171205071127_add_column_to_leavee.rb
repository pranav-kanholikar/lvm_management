class AddColumnToLeavee < ActiveRecord::Migration[5.1]
  def change
    add_column :leavees, :employee_id, :integer
  end
end
