class AddGameIdToTurn < ActiveRecord::Migration
  def change
    add_reference :turns, :game, index: true
  end
end
