class Tournament < ActiveRecord::Base
	has_many :players
	validates_presence_of :name
	validates_presence_of :venue
	validates_presence_of :date

	has_attached_file :image, styles: { :medium => "640x" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
