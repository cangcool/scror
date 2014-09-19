class CreateSprintStates < ActiveRecord::Migration
  def change
    create_table :sprint_states do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
