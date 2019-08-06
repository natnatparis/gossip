class City < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true

  has_many :users
end
