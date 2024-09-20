class Author < ApplicationRecord
  has_many :authorbooks, dependent: :destroy
  has_many :books, through: :authorbooks

  validates :name, presence: true
end