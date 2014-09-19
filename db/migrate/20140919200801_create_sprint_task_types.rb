class CreateSprintTaskTypes < ActiveRecord::Migration
  def change
    create_table :sprint_task_types do |t|
      t.string :name
      t.integer :sprint_id
      t.string :color_code
      t.integer :user_id

      t.timestamps
    end
  end
end
