class AddBoardColumnTypeRefToSprintBoardColumns < ActiveRecord::Migration
  def change
    add_reference :sprint_board_columns, :board_column_type, index: true
  end
end
