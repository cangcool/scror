class Company < ActiveRecord::Base
  belongs_to :country
  has_many :projects

  validates_presence_of :name
  validates_length_of :name, :maximum => 100
  validates_presence_of :address
  validates_length_of :address, :maximum => 200
  validates_presence_of :country
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  
end
