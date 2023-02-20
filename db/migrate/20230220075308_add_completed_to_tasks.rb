class AddCompletedToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :completed, :integer, default: 0
  end
end
