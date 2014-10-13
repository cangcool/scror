class SignUpUser < User
  validates_confirmation_of :password
  validates_presence_of :password_confirmation

end
