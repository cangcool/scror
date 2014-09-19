class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :country_id
      t.string :email
      t.string :web_address
      t.integer :user_id

      t.timestamps
    end
  end
end
