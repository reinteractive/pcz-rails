class Tournament < ActiveRecord::Base
	has_many :players, :through => :player_contact
	has_many :player_contacts
	validates_presence_of :name
	validates_presence_of :venue
	validates_presence_of :date

	mount_uploader :image, ImageUploader
end
