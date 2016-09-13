require 'httparty'
require 'json'

class AriaRestClient
  include HTTParty

  attr_accessor :client_no, :auth_key, :url

  def initialize(client_no, auth_key, url)
    self.client_no = client_no
    self.auth_key = auth_key
    self.url = url
  end

  def call(api_name, options = {})

    defaults = {
      :output_format => 'json',
      :client_no => self.client_no,
      :auth_key => self.auth_key,
      :rest_call => api_name
    }

    options.merge!(defaults)

    self.class.post(self.url, :body => options)
  end

end
