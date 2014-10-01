class Task < ActiveRecord::Base
  belongs_to :product_backlog
  belongs_to :sprint_task_type
  
  validates_presence_of :content
  validates_length_of :content, :maximum => 100
end
