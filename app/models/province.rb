class Province < ApplicationRecord
  has_many :province_rates
  has_many :rates, through: :province_rates, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end
