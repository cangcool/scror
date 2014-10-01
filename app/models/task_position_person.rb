class TaskPositionPerson < ActiveRecord::Base
  belongs_to :task
  belongs_to :user
  belongs_to :assigner, :class_name => 'User'
end
