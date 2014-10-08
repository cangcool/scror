class DemoUser < User
  before_save :add_value

  # Override method
  def validate_presence_of_fullname?
    false
  end
  # Override method
  def validate_presence_of_username?
    false
  end
  # Override method
  def validate_uniqueness_of_username?
    false
  end
  # Override method
  def validate_presence_of_password?
    false
  end
  # Override method
  def validate_uniqueness_of_email?
    false
  end

  def add_value
    if email.present?
      self.username = email
    end  
  end  
end
