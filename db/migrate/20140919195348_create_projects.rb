class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :is_active
      t.integer :user_id
      t.integer :company_id
      t.integer :project_type_id

      t.timestamps
    end
  end
end
