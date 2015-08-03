class Saloon < ActiveRecord::Base
  belongs_to :users


  validates :email, presence: true, uniqueness: true
  validates :name, :description :price, presence: true
  validates :description, length: { 
    minimum: 100,
    maximum: 500, 
    too_long: "%{count} characters is the maximum allowed"}
end
