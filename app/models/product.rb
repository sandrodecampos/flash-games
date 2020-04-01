class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :type_items
  has_many :platforms, through: :type_items
  has_many :category_items
  has_many :genres, through: :category_items
end
