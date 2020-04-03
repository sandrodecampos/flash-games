class Platform < ApplicationRecord
  has_many :type_items
  has_many :products, through: :type_items

  validates :name, presence: true,length: { maximum: 20 }
end
