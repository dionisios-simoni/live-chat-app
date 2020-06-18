class User < ApplicationRecord
  has_many :messages
  validates :username, presence: true, length: { minimum: 4, maximum: 20 },
                       uniqueness: { case_sensitive: false }
  has_secure_password
end
