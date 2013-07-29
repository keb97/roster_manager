class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.references :club
      t.references :nation

      t.timestamps
    end
    add_index :players, :club_id
    add_index :players, :nation_id
  end
end
