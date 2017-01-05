class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :full_name
      t.integer :phase_num
      t.references :team

      t.timestamps null: false
    end
  end
end
