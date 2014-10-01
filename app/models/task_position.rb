class TaskPosition < ActiveRecord::Base
  belongs_to :task
  belongs_to :sprint_board_column
  has_many :task_position_person
end
