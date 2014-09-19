class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :product_backlog_id
      t.integer :sprint_task_type_id

      t.timestamps
    end
  end
end
