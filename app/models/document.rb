class Document < ApplicationRecord
  belongs_to :doc_shelf
  belongs_to :author
end
