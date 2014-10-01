class DropUser < ActiveRecord::Migration
  def change
    drop_table :users

    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :email
      t.string :avatar
      t.boolean :is_active
      t.datetime :last_access

      t.timestamps
    end

  end
end
