class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :name
      t.text :description
      t.integer :project_id
      t.integer :sprint_order_number
      t.datetime :start_at
      t.datetime :end_at
      t.integer :sprint_state_id
      t.integer :creator_id
      t.integer :modifier_id

      t.timestamps
    end
  end
end
