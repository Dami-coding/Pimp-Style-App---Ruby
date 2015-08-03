class Saloon < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true
  validates :name, :description :price, presence: true
  validates :description, length: { 
    minimum: 300,
    maximum: 1000, 
    too_long: "%{count} characters is the maximum allowed"}
end
