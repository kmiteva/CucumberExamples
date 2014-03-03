class LoginOnUI

  attr_accessor :email, :password

  def initialize(email, password)
    @email = email
    @password = password
  end

  #def get_email
  #  return @email
  #end
  #
  #def get_password
  #  return @password
  #
  #end

  def password_length
   password_lenght =  @password.length
    return password_lenght

  end


  def password
    password =  @password
    return password

  end

  def email_correctness
    email = @email
   if email.include? "@"
     return true
     else
    return false
  end
  end



end