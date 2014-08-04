class RemoveTurnFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :turn
  end
end
