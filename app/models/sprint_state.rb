class SprintState < ActiveRecord::Base
  has_many :sprints

  validates_presence_of :name
  validates_length_of :name, :maximum => 100
  validates_presence_of :description
  validates_length_of :description, :maximum => 200
end
