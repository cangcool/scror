class Project < ActiveRecord::Base
  attr_accessor :name
  belongs_to :project_type
  belongs_to :user
  belongs_to :company
  has_many :sprints
  has_many :user_projects

  accepts_nested_attributes_for :company


  is_demo = false
  before_save :add_type

  validates_presence_of :name
  validates_length_of :name, :maximum => 10
  validates_length_of :description, :maximum => 500
  validates_presence_of :user, :company, :project_type

  def add_type
    if is_demo
      self.project_type_id = 2
    else
      self.project_type_id = 1
    end
  end

  def set_type_demo
    is_demo = true
  end

  def company_name
    if self.company
      self.company.name
    else
      nil
    end
  end

end
