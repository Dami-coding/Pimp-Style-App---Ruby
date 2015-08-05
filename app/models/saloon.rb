class Saloon < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_votable

  has_many :barbers, class_name:'User', foreign_key:'saloon_id'

  validates :name, :description, :price, presence: true
  validates :description, length: { minimum: 5, maximum: 1000, 
    too_long: "%{count} characters is the maximum allowed"}

  end
