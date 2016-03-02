class CreatePlayerContacts < ActiveRecord::Migration
  def change
    create_table :player_contacts do |t|
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
