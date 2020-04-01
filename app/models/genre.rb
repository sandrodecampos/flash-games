class Genre < ApplicationRecord
  has_many :category_items
  has_many :products, through: :category_items
end
