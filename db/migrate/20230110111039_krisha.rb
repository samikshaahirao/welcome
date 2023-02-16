class Krisha < ActiveRecord::Migration[5.0]
  def change

    create_table :krishas do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :price, :float
      t.column :subject_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
   end
  end
end
