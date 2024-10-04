class DocShelf < ApplicationRecord
  has_many :documents

  validates :key_area, presence: true
end
