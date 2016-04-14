class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_uniqueness_of :title

	has_attached_file :image, styles: { :small => "350x", :mini => "200x" }, :storage => :s3, :url => ':s3_domain_url', :path => '/:class/:attachment/:id_partition/:style/:filename'
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
