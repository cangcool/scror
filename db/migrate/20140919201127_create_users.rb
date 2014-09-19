class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password
      t.string :email
      t.string :avatar
      t.boolean :is_active
      t.datetime :last_access

      t.timestamps
    end
  end
end
