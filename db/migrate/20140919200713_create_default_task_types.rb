class CreateDefaultTaskTypes < ActiveRecord::Migration
  def change
    create_table :default_task_types do |t|
      t.string :name
      t.string :color_code

      t.timestamps
    end
  end
end
