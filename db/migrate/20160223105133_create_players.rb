class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players, {:id =>false} do |t|
      t.integer :fideid
      t.string :name
      t.string :sex
      t.string :title
      t.integer :rating
      t.integer :k
      t.integer :rapid
      t.integer :blitz
      t.integer :birthday
      t.string :flag

      t.timestamps null: false
    end
    execute "ALTER TABLE players ADD PRIMARY KEY (fideid);"
  end
end
