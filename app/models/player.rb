class Player < ActiveRecord::Base
	has_one :tournament :through => :player_contact
	require 'csv'

	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      player_hash = row.to_hash
      player = Player.where(fideid: player_hash["fideid"])

      if player.count == 1
        player.first.update_attributes(player_hash)
      else
        Player.create!(player_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
