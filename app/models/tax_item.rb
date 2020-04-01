class TaxItem < ApplicationRecord
  belongs_to :order
  belongs_to :rate
end
