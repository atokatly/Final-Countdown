class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.integer :rank
      t.references :pitch, foreign_key: true
      t.references :round, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps null: false
    end
  end
end
