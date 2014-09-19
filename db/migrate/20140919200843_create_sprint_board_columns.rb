class CreateSprintBoardColumns < ActiveRecord::Migration
  def change
    create_table :sprint_board_columns do |t|
      t.string :name
      t.text :description
      t.integer :sprint_id
      t.integer :user_id
      t.integer :boardcolumn_type_id

      t.timestamps
    end
  end
end
