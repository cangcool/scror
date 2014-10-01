class SprintBoardColumn < ActiveRecord::Base
  belongs_to :board_column_type
  belongs_to :sprint
  belongs_to :user
  has_many :task_positions
  has_many :sprint_chart_records

  validates_presence_of :name
  validates_length_of :name, :maximum => 20
  validates_presence_of :description
  validates_length_of :description, :maximum => 100
end
