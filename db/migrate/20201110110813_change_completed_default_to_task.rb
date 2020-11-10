class ChangeCompletedDefaultToTask < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :completed, false
  end
end
