class AddDateToExercises < ActiveRecord::Migration
  def change
  	add_column :exercises, :date, :date
  end
end
