class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_one :tree, dependent: :destroy
  has_one :userdetail, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
