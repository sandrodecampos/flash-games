class ProvinceRate < ApplicationRecord
  belongs_to :province
  belongs_to :rate

  validates :amount, presence: true, numericality: true
end
