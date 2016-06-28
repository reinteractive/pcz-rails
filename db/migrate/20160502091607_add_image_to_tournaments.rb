class AddImageToTournaments < ActiveRecord::Migration
  def change
  	add_column :tournaments, :image, :string
  end
end
