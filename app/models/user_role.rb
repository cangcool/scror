class UserRole < ActiveRecord::Base
  has_many :user_projects

  validates_presence_of :name
  validates_length_of :name, :maximum => 100
  validates_length_of :description, :maximum => 200
  
end
