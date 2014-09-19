class CreateSprintActivityTypes < ActiveRecord::Migration
  def change
    create_table :sprint_activity_types do |t|
      t.string :name
      t.string :format

      t.timestamps
    end
  end
end
