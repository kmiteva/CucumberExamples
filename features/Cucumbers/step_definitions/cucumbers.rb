Given(/^there are (.*) cucumbers$/) do |start|
  @cucumbers_at_the_beginning = start.to_i
end

When(/^I eat (.*) cucumbers$/) do |eat|
  @cucumbers_that_are_eaten = eat.to_i

end

Then(/^I should have (.*) cucumbers$/) do |left|

  if left == 'enough' then
    strange_case = @cucumbers_at_the_beginning - @cucumbers_that_are_eaten + @cucumbers_that_are_bought
    puts "The cucumbers that really left are:" + strange_case.to_s

  else
  @cucumbers_that_are_left = left.to_i
  diff = @cucumbers_at_the_beginning - @cucumbers_that_are_eaten

  if diff == @cucumbers_that_are_left
    puts "Expected result is equal to actual result"

  else
    puts "Expected result is NOT equal to actual result"

  end
  end
end

But(/^I buy the other (.*)$/) do |number|
  @cucumbers_that_are_bought = number.to_i

end

