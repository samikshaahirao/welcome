class AddPartNumberToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :first_name, :string
    add_column :posts, :last_name, :string
    add_column :posts, :age, :integer
  end
end
