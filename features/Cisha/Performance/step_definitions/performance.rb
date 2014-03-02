
require_relative "../../../../lib/ping_host"

#Given(/^performance$/) do
#  pingHost = PingHost.new
#  pingHost.ping("http://www.chess24.com/en/play")
#    #ping "http://www.chess24.com/en/play"
#
#end

Given(/^(.*)  web service$/) do |restful_web_service|
  @restful_webservice = restful_web_service
end

When(/^request for response time$/) do
  @pingHost = PingHost.new
end

Then(/^the response time should be returned$/) do
  @response_time  = @pingHost.ping(@restful_webservice)

end


And(/^the average response time should be calculated$/) do
  if @response_time > 0.20
  then puts "The response time is not good enough!"
  else
    ms = 0
    sum = 0
    #for i in (1..3)
    #  puts "How many times #{i}"
    3.times{  ms = @pingHost.ping(@restful_webservice)
    sum += ms
    }
    #end
    average_response =  sum/3
    puts "The avarege response is #{average_response} ms for the following #{@restful_webservice} "
    end
end

Given(/^Selected  RESTful web service$/) do
  @restful_webservice = "http://www.chess24.com/en/play"
end