class Book < ApplicationRecord
  has_many :authorbooks, dependent: :destroy
  has_many :authors, through: :authorbooks
  validates :title, presence: true

  validate :at_least_one_author

  private

  def at_least_one_author
    errors.add(:authors, "must have at least one author") if authors.empty?
  end
end
