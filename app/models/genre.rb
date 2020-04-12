class Genre < ApplicationRecord
  has_many :category_items
  has_many :products, through: :category_items, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end
