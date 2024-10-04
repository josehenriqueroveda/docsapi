class AddUrlToDocuments < ActiveRecord::Migration[7.2]
  def change
    add_column :documents, :url, :string
  end
end
