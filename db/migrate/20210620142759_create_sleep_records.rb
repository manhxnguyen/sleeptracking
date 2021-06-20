class CreateSleepRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :sleep_records do |t|
      t.datetime :sleep_time
      t.datetime :wake_time
      t.integer :sleep_duration
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
