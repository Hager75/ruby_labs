class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username 
      t.string :email
      t.string :encrypted_password 
      t.string :salt
      t.timestamps
    end
  end
end
