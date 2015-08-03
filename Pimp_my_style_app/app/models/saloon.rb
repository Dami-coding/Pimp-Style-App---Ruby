class Saloon < ActiveRecord::Base
  belongs_to :users


  validates :name, :description, :price, presence: true
  validates :description, length: { 
    minimum: 5,
    maximum: 200, 
    too_long: "%{count} characters is the maximum allowed"}
end
