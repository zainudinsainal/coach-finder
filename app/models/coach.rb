class Coach < ApplicationRecord
  has_many :requests, dependent: :destroy

  validates :first_name, :last_name, :areas, :description, :hourly_rate, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 0 }
end
