class AddTurnIdToGameAction < ActiveRecord::Migration
  def change
    add_column :game_actions, :turn_id, :integer
  end
end
