class CreateLogEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :log_entries do |t|
      t.references :daily_log

      t.timestamps
    end
  end
end
