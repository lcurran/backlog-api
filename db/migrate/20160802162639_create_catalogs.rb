class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|

      t.timestamps null: false
    end
  end
end
