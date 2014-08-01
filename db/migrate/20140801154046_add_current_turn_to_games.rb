class AddCurrentTurnToGames < ActiveRecord::Migration
  def change
    add_column :games, :current_turn, :integer
  end
end
