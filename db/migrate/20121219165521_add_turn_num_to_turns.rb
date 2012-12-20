class AddTurnNumToTurns < ActiveRecord::Migration
  def up
  	add_column :turns, :turn_num, :integer
  end

  def down
  	remove_column :turns, :total
  end
end
