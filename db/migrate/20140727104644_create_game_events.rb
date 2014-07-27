class CreateGameEvents < ActiveRecord::Migration
  def change
    create_table :game_events do |t|
      t.string :description

      t.timestamps
    end
  end
end
