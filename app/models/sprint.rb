class Sprint < ActiveRecord::Base
  belongs_to :project
  belongs_to :creator, :class_name => 'User'
  belongs_to :modifier, :class_name => 'User'
  belongs_to :sprint_state
  has_many  :sprint_task_types
  has_many  :sprint_activities

  before_create :generate_order_number
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 100
  validates_length_of :description, :maximum => 200

  private
  #todo
  def generate_order_number
    self.sprint_order_number = 1
  end
end
