class Saloon < ActiveRecord::Base

  has_many :barbers, class_name:'User', foreign_key:'saloon_id'


  validates :name, :description, :price, presence: true
  validates :description, length: { minimum: 5, maximum: 1000, 
    too_long: "%{count} characters is the maximum allowed"}

    acts_as_liker
    acts_as_likeable

  end
