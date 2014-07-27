class CreateGameActions < ActiveRecord::Migration
  def change
    create_table :game_actions do |t|
      t.string :description

      t.timestamps
    end
  end
end
