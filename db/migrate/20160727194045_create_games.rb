# Creates game information table with data imported from IGDB
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :igdb_id
      t.string :name, null: false, index: { unique: true }
      t.string :summary
      t.string :storyline
      t.text :videos
      t.text :cover
      t.timestamps null: false
    end
  end
end
