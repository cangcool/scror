class Project < ActiveRecord::Base
  attr_accessor :name
  belongs_to :project_type
  belongs_to :user
  belongs_to :company
  has_many :sprints
  has_many :user_projects

  validates_presence_of :name
  validates_length_of :name, :maximum => 10
  validates_length_of :description, :maximum => 500
  validates_presence_of :user, :company, :project_type
end
