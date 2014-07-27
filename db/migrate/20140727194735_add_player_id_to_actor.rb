class AddPlayerIdToActor < ActiveRecord::Migration
  def change
    add_reference :actors, :player, index: true
  end
end
