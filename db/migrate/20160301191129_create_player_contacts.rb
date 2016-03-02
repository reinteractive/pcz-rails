class CreatePlayerContacts < ActiveRecord::Migration
  def change
    create_table :player_contacts do |t|
      t.belongs_to :tournament, index: true
      t.belongs_to :player, index: true
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
