class Message < ApplicationRecord
  belongs_to :user
  validates :post, presence: true, length: { minimum: 10 }
  validates :user, presence: true
end
