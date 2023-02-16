class RemoveDiscrptionFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :discription, :text
  end
end
