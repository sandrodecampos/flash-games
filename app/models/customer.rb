class Customer < ApplicationRecord
  has_many :orders
  belongs_to :user

  validates :last_name, :address1, :city, :province, :posta_code, presence: true, length: { maximum: 20 }
  validates :first_name, presence: true, length: { maximum: 20, minimum: 2 }
end
