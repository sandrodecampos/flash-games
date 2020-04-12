class Page < ApplicationRecord
  validates :title, :content, :url, presence: true
  validates :title, :url, length: { maximum: 15 }
end
