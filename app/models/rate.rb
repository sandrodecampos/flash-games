class Rate < ApplicationRecord
  has_many :province_rates
  has_many :provinces, through: :province_rates
  has_many :tax_items
  has_many :orders, through: :tax_items
end
