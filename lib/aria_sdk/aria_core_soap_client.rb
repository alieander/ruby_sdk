require 'savon'

class AriaCoreSoapClient
  include Savon

  attr_accessor :client_no, :auth_key

  def initialize(client_no, auth_key, version, prod = false)
    self.client_no = client_no
    self.auth_key = auth_key

    if prod
      wsdl = "https://secure.ariasystems.net/api/Advanced/wsdl/#{version}/complete-doc_literal_wrapped.wsdl"
    else
      wsdl = "https://secure.future.stage.ariasystems.net/api/Advanced/wsdl/#{version}/complete-doc_literal_wrapped.wsdl"
    end

    @client = Savon.client(wsdl: wsdl) do
      convert_request_keys_to :none
    end
  end

  def call(api_name, message = {})

    defaults = {
      output_format: 'json',
      client_no: self.client_no,
      auth_key: self.auth_key,
    }

    message.merge!(defaults)
    response = @client.call(api_name.to_sym, message: message)

    #response = @client.call(api_name.to_sym, message: message )
    response_name = api_name << '_response_element'

    response.body[response_name.to_sym]
  end

end
