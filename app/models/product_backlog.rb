class ProductBacklog < ActiveRecord::Base
  belongs_to :sprint
  belongs_to :project
  has_many :tasks

  validates_presence_of :content
  validates_length_of :content, :maximum => 300
  validates_presence_of :point
  validates_length_of :description, :maximum => 200
  
end
