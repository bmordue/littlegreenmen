class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :turn
      t.text :terrain

      t.timestamps
    end
  end
end
