class CreateEmployers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :website
      t.string :email
      t.string :phone_no
      t.string :alternative_no

      t.timestamps
    end
  end
end
