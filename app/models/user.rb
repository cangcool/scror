class User < ActiveRecord::Base
  attr_accessor :password
  has_many :projects
  has_many :sprints
  has_many :task_position_persons
  has_many :sprint_task_types
  has_many :user_projects

  before_save :encrypt_password

  
  validates_presence_of :fullname
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  
    t.string   "fullname"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.string   "avatar"
    t.boolean  "is_active"
    t.datetime "last_access"

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
