class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :name
      t.integer :max_x
      t.integer :min_x
      t.integer :max_y
      t.integer :min_y

      t.timestamps
    end
  end
end
