class AddMovetoXAndMovetoYToGameAction < ActiveRecord::Migration
  def change
    add_column :game_actions, :moveto_x, :integer
    add_column :game_actions, :moveto_y, :integer
  end
end
