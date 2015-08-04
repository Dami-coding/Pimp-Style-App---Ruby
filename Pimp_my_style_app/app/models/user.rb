class User < ActiveRecord::Base
  has_secure_password
  belongs_to :saloon, class_name: "Saloon", foreign_key: 'saloon_id'


  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 5..10 } 

  acts_as_liker
  acts_as_likeable

end
