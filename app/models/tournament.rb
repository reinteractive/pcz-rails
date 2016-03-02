class Tournament < ActiveRecord::Base
	has_many :players, :through => :player_contact
	has_many :player_contacts
	validates_presence_of :name
	validates_presence_of :venue
	validates_presence_of :date

	has_attached_file :image, styles: { :small => "350x", :medium => "480x" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
