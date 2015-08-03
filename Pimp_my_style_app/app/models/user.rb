class User < ActiveRecord::Base
  has_secure_password
  has_many_saloon

  attr_accessor :email, :password, :password_confirmation
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name :email, :password, presence: true
  validates :password, length: { in: 6..20 }
end
