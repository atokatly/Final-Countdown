class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :round_num
      t.boolean :active_round
      t.references :pitchday

      t.timestamps null: false
    end
  end
end
