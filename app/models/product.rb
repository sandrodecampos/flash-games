class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items, dependent: :destroy
  has_many :type_items
  has_many :platforms, through: :type_items, dependent: :destroy
  has_many :category_items
  has_many :genres, through: :category_items, dependent: :destroy
  accepts_nested_attributes_for :category_items, allow_destroy: true
  has_one_attached :image

  validates :name, :description, :release_date, presence: true
  validates :name, length: { maximum: 30 }
  validates :description, length: { maximum: 500 }

  paginates_per 6
end
