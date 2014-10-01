class SprintTaskType < ActiveRecord::Base
  has_many :tasks
  belongs_to :sprint
  belongs_to :user

  validates_presence_of :name
  validates_length_of :name, :maximum => 100
  validates_presence_of :color_code
  validates_length_of :color_code, :maximum => 2
end
