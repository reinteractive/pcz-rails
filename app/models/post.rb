class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_uniqueness_of :title

	has_attached_file :image, styles: { :small => "350x", :mini => "200x" },:storage => :s3, :bucket => "pcz-assets", :url =>':s3_domain_url',:path => '/:class/:attachment/:id_partition/:style/:filename',:s3_credentials => "#{Rails.root}/config/s3.yml",:s3_region => 'us-west-2'
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
