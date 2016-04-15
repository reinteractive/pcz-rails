class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_uniqueness_of :title

	has_attached_file :image, styles: { :small => "350x", :mini => "200x" }, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => ":attachment/:id/:style.:extension"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
