require 'net/http'
require 'uri'
require 'rest-client'
require 'test/unit/assertions'

include Test::Unit::Assertions


class BuyContent

  def post_data(customer_id,customer_email)

    @internal_ref = '1234'
    @currency = 'EUR'
    @amount = '1.23'
    @customer_id = customer_id.to_s
    @customer_email = customer_email.to_s
    @return_url = ''
    @locale = 'de'

    @full_account_details ={

       :internal_ref => @internal_ref,
        :currency => @currency,
        :amount => @amount,
        :customer_id => @customer_id,
        :customer_email => @customer_email ,
        :return_url => @return_url,
        :locale => @locale

    }


    url_to_buy_content = "http://192.168.0.142:8080/buy_content"

    begin
      response = RestClient.post url_to_buy_content, @full_account_details.to_json, :content_type => :json

    rescue => e
      p e
    end
    result = JSON.parse(response)
    return result




    self


end

  def validate_data(data)

   assert_not_nil(data["id"], "The payment form is not correct")

   assert_not_nil(data["payment_form"], "The payment form is not correct")

   assert_instance_of(Hash, data["payment_form"], "The payment form is not correct")


  end

  end