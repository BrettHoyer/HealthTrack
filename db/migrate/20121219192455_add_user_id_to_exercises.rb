class AddUserIdToExercises < ActiveRecord::Migration
  def change
  	add_column :exercises, :user_id, :integer
  end
end
