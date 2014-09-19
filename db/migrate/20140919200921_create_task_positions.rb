class CreateTaskPositions < ActiveRecord::Migration
  def change
    create_table :task_positions do |t|
      t.integer :task_id
      t.integer :sprint_board_column_id
      t.boolean :is_block

      t.timestamps
    end
  end
end
