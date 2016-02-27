class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :venue
      t.datetime :date
      t.datetime :registration_deadline
      t.text :more_information

      t.timestamps null: false
    end
  end
end
