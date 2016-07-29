class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
