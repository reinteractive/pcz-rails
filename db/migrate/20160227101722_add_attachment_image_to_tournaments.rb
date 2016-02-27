class AddAttachmentImageToTournaments < ActiveRecord::Migration
  def self.up
    change_table :tournaments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tournaments, :image
  end
end
