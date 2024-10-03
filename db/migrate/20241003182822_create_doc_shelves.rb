class CreateDocShelves < ActiveRecord::Migration[7.2]
  def change
    create_table :doc_shelves do |t|
      t.string :key_area
      t.integer :limit

      t.timestamps
    end
  end
end
