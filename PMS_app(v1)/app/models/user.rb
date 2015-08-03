class User < ActiveRecord::Base
  has_many :bookings


  validates :email, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
end
