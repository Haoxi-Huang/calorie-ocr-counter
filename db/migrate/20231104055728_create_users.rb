class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :gmail_uid
      t.string :name

      t.timestamps
    end
  end
end
