class RoadTrip < ActiveRecord::Base
	has_many :stops
	belongs_to :user
	has_many :posts

  validates :title, presence: true
  validates :description, presence: true
  validates_length_of :description, :minimum => 80

  has_attached_file :feature_image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/
end