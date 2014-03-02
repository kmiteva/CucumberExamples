require 'test/unit'
require 'rest-client'
require_relative "../../../../lib/responces"

Given(/^the API$/) do

@web_service = "https://chess24.com/en/learn"


  end


When(/^request the API$/) do
  @get_response = RestClient.get( @web_service,
                                 {
                                     "Content-Type" => "application/json"
                                     #"Authorization" => "token 4d012314b7e46008f215cdb7d120cdd7",
                                     #"Manufacturer-Token" => "8d0693ccfe65104600e2555d5af34213"
                                 }
  )
  #puts @get_response.body
end

Then(/^response should be successful$/) do
  code_response=@get_response.code
  response = Responses.new(code_response)
  result = response.createassert

  puts code_response
  puts result


  #assert_equal(@get_response.code,200, "Response is NOT OK")
  #if get_response.code == 200
  #  puts "********* Get current user successful"
  #else
  #  puts "Get current user failed!!"
  #end
end

