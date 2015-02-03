class RemoveDescriptionFromGameAction < ActiveRecord::Migration
  def change
    remove_column :game_actions, :description, :string
  end
end
