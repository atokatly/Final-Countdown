class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :email, :null => false
      t.string :crypted_password

      t.timestamps null: false
    end
  end
end
