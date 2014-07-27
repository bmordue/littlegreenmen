class AddGameIdToTurn < ActiveRecord::Migration
  def change
    add_reference :turns, :turn, index: true
  end
end
