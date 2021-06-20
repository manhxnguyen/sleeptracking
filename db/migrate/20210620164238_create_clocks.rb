class CreateClocks < ActiveRecord::Migration[6.1]
  def change
    create_table :clocks do |t|
      t.datetime :checkin
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
