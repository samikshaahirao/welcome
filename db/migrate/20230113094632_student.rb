class Student < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :standard
      t.integer :age

      t.timestamps
  
    end
  end
end
