class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.string :game_id

      t.timestamps
    end
  end
end
