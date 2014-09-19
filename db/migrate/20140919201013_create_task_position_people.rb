class CreateTaskPositionPeople < ActiveRecord::Migration
  def change
    create_table :task_position_people do |t|
      t.integer :task_position_id
      t.integer :user_id
      t.integer :assigner_id

      t.timestamps
    end
  end
end
