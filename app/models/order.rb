class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :products, through: :line_items
  has_many :tax_items
  has_many :rates, through: :tax_items

  validates :subtotal, :total, presence: true, numericality: true

end
