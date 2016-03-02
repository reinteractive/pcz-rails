class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_uniqueness_of :title

	has_attached_file :image, styles: { :small => "350x", :medium => "480x" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
