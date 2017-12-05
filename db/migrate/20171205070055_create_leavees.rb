class CreateLeavees < ActiveRecord::Migration[5.1]
  def change
    create_table :leavees do |t|
      t.date :leave_from_date
      t.date :leave_to_date
      t.text :reason
      t.string :no_of_days

      t.timestamps
    end
  end
end
