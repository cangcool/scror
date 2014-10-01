class SprintActivity < ActiveRecord::Base
  belongs_to :sprint
  belongs_to :sprint_activity_type

  validates_presence_of :content
  validates_length_of :content, :maximum => 100

end
