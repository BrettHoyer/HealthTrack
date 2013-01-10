class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.date :date
      t.integer :user_id
      t.float :distance
      t.string :time

      t.timestamps
    end
  end
end
