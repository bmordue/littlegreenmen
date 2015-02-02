class AddXAndYToActor < ActiveRecord::Migration
  def change
    add_column :actors, :x, :integer
    add_column :actors, :y, :integer
  end
end
