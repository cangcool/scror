class CreateDefaultBoardColumns < ActiveRecord::Migration
  def change
    create_table :default_board_columns do |t|
      t.string :name
      t.text :description
      t.integer :boardcolumn_type_id

      t.timestamps
    end
  end
end
