class AddPartNumberToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :part_number, :string
  end
end
