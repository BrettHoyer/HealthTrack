class AddDateToTurns < ActiveRecord::Migration
  def change
  	add_column :turns, :date, :date
  end
end
