class CreateBoardColumnTypes < ActiveRecord::Migration
  def change
    create_table :board_column_types do |t|
      t.string :name
      t.text :description
      t.boolean :is_charted

      t.timestamps
    end
  end
end
