class User < ApplicationRecord
    has_many :messages
    has_many :comments
    validates :first_name, presence: true, length: { minimum: 5 }, uniqueness: { case_senstitive: false }
end
