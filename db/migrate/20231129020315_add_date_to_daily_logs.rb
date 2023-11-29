class AddDateToDailyLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :daily_logs, :date, :date
  end
end
