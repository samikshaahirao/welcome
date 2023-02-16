class AddFirstNameLastNameAgeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :first_name, :string
    add_column :products, :last_name, :string
    add_column :products, :age, :integer
  end
end
