class AddServingCountAndCalorieCountToLogEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :log_entries, :serving_count, :integer, default: 0
    add_column :log_entries, :calorie_count, :integer, default: 0
  end
end
