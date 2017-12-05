class AddColumnToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :employer_id, :integer
  end
end
