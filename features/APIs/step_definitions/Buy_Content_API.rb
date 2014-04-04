
Given(/^The customer (.*) who is trying to buy a product$/) do |customer_id|
  @buy_content = BuyContent.new
  
  @customer_id = customer_id
  @customer_email = 'kalina@abv.bg'     
      
end


When(/^The customer pay for the item$/) do
  @result = @buy_content.post_data(@customer_id,@customer_email)
end



Then(/^the Service return a valid session form$/) do
  @buy_content.validate_data(@result)
end

Given(/^some Notifiction$/) do
  notification_provider = NotificationProvider.new

  notification_provider.notification

  end

Given(/^Mailer$/) do
 box =  MailerBox.new
  box.test
end