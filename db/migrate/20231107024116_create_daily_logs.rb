class CreateDailyLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_logs do |t|
      t.references :user

      t.timestamps
    end
  end
end
