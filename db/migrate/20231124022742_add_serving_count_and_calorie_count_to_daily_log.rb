class AddServingCountAndCalorieCountToDailyLog < ActiveRecord::Migration[7.0]
  def change
    add_column :daily_logs, :serving_count, :integer, default: 0
    add_column :daily_logs, :calorie_count, :integer, default: 0
  end
end
