class AddFoodNameToLogEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :log_entries, :food_name, :string
  end
end
