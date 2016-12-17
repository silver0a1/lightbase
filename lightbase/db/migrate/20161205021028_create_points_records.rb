class CreatePointsRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :points_records do |t|
      t.integer :user_id
      t.integer :value
      t.datetime :created_at

      t.timestamps
    end
  end
end
