class SprintActivityType < ActiveRecord::Base
  has_many  :sprint_activities

  validates_presence_of :name
  validates_length_of :name, :maximum => 50
  validates_presence_of :format
  validates_length_of :format, :maximum => 200

end
