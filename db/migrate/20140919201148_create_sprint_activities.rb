class CreateSprintActivities < ActiveRecord::Migration
  def change
    create_table :sprint_activities do |t|
      t.string :content
      t.integer :spint_id
      t.integer :sprint_activity_type_id

      t.timestamps
    end
  end
end
