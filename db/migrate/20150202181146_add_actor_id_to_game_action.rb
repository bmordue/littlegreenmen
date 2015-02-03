class AddActorIdToGameAction < ActiveRecord::Migration
  def change
    add_column :game_actions, :actor_id, :integer
  end
end
