class User < ActiveRecord::Base
  has_secure_password
  has_many :saloon

  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 4..10 } 
end
