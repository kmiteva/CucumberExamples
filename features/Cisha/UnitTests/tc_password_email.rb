require_relative "../../../lib/login_on_ui"
require "test/unit"

class TC_password_email < Test::Unit::TestCase


  def test_exact_password_length
    assert_equal(6, LoginOnUI.new('jhon_customer@yahoo.com', 'jhon_cus').password_length)
  end

  def test_password_length
    assert(LoginOnUI.new('jhon_customer@yahoo.com', 'jhon').password_length>8, "The lenght of the password is less then 8 char" )
  end

  def test_password_not_nil
    assert_not_nil(LoginOnUI.new('jhon_customer@yahoo.com','jhon_customer').password, "The password is missing" )
  end

  def test_email_correctness
    assert(LoginOnUI.new('jhon_customer@yahoo.com', 'jhon_customer').email_correctness, "The email is incorrect" )

  end

end
