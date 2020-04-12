class Rate < ApplicationRecord
  has_many :province_rates
  has_many :provinces, through: :province_rates, dependent: :destroy
  has_many :tax_items
  has_many :orders, through: :tax_items, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end
