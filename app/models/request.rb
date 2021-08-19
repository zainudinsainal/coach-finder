class Request < ApplicationRecord
  belongs_to :coach

  validates :email, :message, presence: true
end
