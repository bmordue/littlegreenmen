class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :sequence

      t.timestamps
    end
  end
end
