class Order < ApplicationRecord
  has_many :customers
  has_many :line_items
  has_many :products, through: :line_items
  has_many :tax_items
  has_many :rates, through: :tax_items
end
