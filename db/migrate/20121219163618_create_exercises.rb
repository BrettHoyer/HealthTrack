class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name

      t.timestamps
    end
  end
end
