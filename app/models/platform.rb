class Platform < ApplicationRecord
  has_many :type_items
  has_many :products, through: :type_items
end
