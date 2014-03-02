require 'test/unit'

include Test::Unit::Assertions

class Responses


  def initialize(response_code)
    @response_code = response_code
    return @response_code
  end

  def createassert()
    assert_equal(@response_code,200, "Response is NOT OK")

  end


end