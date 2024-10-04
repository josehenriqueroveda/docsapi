class Document < ApplicationRecord
  belongs_to :doc_shelf
  belongs_to :author

  validates :title, :version, :status, :url, :published_at, presence: true
  validate :is_shelf_on_limit

  def is_shelf_on_limit
    if self.doc_shelf.documents.count >= self.doc_shelf.limit
      erros.add(:base, "Document limit reached")
    end
  end
end
