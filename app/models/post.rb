class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_uniqueness_of :title

	mount_uploader :image, ImageUploader

	
end
