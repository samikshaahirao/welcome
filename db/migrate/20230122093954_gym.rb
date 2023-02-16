class Gym < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :first_name
      t.string :last_name
      t.integer :weight
      t.integer :age

      t.timestamps
  
    end
  end
end
