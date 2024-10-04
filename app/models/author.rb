class Author < ApplicationRecord
  has_many :documents

  validates :name, uniqueness: true, presence: true
  validates :department, presence: true
end
