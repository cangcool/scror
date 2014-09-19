class CreateProductBacklogs < ActiveRecord::Migration
  def change
    create_table :product_backlogs do |t|
      t.text :content
      t.integer :sprint_id
      t.integer :point

      t.timestamps
    end
  end
end
