class AddDiscriptionToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :discription, :text
  end
end
