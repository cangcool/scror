class CreateSprintChartRecords < ActiveRecord::Migration
  def change
    create_table :sprint_chart_records do |t|
      t.integer :sprint_board_column_id
      t.date :date
      t.integer :task_total

      t.timestamps
    end
  end
end
