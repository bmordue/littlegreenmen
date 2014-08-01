class AddDefaultCurrentTurnToGames < ActiveRecord::Migration
  def up
    change_column :games, :current_turn, :integer, :default => 0
  end

  def down
    change_column :games, :current_turn, :integer, :default => nil
  end
end
