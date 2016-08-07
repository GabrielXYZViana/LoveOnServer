class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :id_facebook
      t.string :token
      t.string :password_digest
      t.boolean :email_confirmed
      t.string :confirm_token
      t.string :password_reset_key
      t.datetime :password_reset_sent_at
      t.string :gender
      t.date :birthday
      t.string :description
      t.text :avatar
      t.boolean :status, :default => false
      t.integer :age
      t.float :weight
      t.float :height
      t.string :city
      t.string :district
      t.text :gallery, array: true
      t.timestamps null: false
    end
  end
end
