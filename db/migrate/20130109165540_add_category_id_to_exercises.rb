class AddCategoryIdToExercises < ActiveRecord::Migration
  def change
  	add_column :exercises, :category_id, :integer
  end
end
