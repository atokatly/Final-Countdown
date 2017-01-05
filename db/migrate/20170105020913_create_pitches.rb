class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.string :title
      t.string :description
      t.boolean :final
      t.references :student
      t.references :pitchday

      t.timestamps null: false
    end
  end
end
