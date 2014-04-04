
Given(/^Created unit$/) do

@tc = TC_password_email.new
end


When(/^Provide some input data$/) do
 @email = 'jhon_customer@yahoo.com'
  @password = 'jhon_customer'
end

Then(/^Unit test should be successfully passed$/) do
  @tc.test_email_correctness( @email, @password)

end