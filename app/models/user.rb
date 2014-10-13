class User < ActiveRecord::Base
  attr_accessor :password
  has_many :projects
  has_many :sprints
  has_many :task_position_persons
  has_many :sprint_task_types
  has_many :user_projects
  # self.inheritance_column = :type

  before_save :encrypt_password
  
  validates_presence_of :fullname, :if => :validates_presence_of_fullname?
  validates_presence_of :username, :if => :validates_presence_of_username?
  validates_uniqueness_of :username, :if => :validates_uniqueness_of_username?
  validates_presence_of :password, :if => :validates_presence_of_password?
  validates_presence_of :email, :if => :validates_presence_of_email?
  validates_uniqueness_of :email, :if => :validates_uniqueness_of_email?
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  

  def validates_presence_of_fullname?
    true
  end

  def validates_presence_of_username?
    true
  end

  def validates_uniqueness_of_username?
    true
  end

  def validates_presence_of_password?
    true
  end

  def validates_presence_of_email?
    true
  end

  def validates_uniqueness_of_email?
    true
  end
    
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
