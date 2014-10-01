class Country < ActiveRecord::Base
  has_many :companies

  validates_presence_of :name
  validates_length_of :name, :maximum => 50
  validates_presence_of :code
  validates_length_of :code, :maximum => 2

end
