class RefactorProjects < ActiveRecord::Migration
  def change
    change_column_null :projects, :is_active, false
    change_column_default :projects, :is_active, true      
  end
end
