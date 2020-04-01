class Genre < ApplicationRecord
  has_many :category_items
  has_many :products, through: :type_items
end
