class AddProjectRefToProductBacklogs < ActiveRecord::Migration
  def change
    add_reference :product_backlogs, :project, index: true
  end
end
