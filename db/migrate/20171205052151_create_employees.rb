class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_joining
      t.date :date_of_termination
      t.string :manager
      t.string :designation
      t.string :department
      t.boolean :active, :default => "true"
      t.string :lead

      t.timestamps
    end
  end
end
