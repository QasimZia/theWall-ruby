class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :message
  validates :content, presence: true, length: { minimum: 10 }
  validates :user, presence: true
end
