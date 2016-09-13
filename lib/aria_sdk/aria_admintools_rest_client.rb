require 'aria_sdk/aria_rest_client'

class AriaAdmintoolsRestClient < AriaRestClient
  attr_reader :prod

  def initialize(client_no, auth_key, prod = false)
    @prod = prod

    url = if prod
            'https://admintools.ariasystems.net/AdminTools.php/Dispatcher'
          else
            'https://admintools.future.stage.ariasystems.net/AdminTools.php/Dispatcher'
          end

    super client_no, auth_key, url
  end
end
