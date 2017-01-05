class CreatePitchday < ActiveRecord::Migration[5.0]
  def change
    create_table :pitchdays do |t|
      t.string :cohort
      t.integer :size
      t.references :user

      t.timestamps null: false
    end
  end
end
