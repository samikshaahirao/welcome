class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :add_line1
      t.string :add_line2

      t.timestamps
    end
  end
end
