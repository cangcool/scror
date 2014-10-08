class SignUpUser < User
  validates_confirmation_of :password

  # Override method
  def validate_presence_of_fullname?
    false
  end
  # Override method
  def validate_presence_of_username?
    false
  end
end
