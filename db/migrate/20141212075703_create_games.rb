class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :gamename
      t.integer :count

      t.timestamps
    end
  end
end
