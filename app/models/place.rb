class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  geocoded_by :address, presence: true, length: { minimum: 3}
  after_validation :geocode

  validates :name, presence: true
end