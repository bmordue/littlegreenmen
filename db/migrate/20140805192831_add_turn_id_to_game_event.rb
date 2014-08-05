class AddTurnIdToGameEvent < ActiveRecord::Migration
  def change
    add_column :game_events, :turn_id, :integer
  end
end
