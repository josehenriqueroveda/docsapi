class CreateDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :version
      t.string :info
      t.date :published_at
      t.string :status
      t.references :doc_shelf, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
