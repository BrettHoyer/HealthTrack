class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :total
      t.integer :reps
      t.integer :weight
      t.integer :exercise_id

      t.timestamps
    end
  end
end
