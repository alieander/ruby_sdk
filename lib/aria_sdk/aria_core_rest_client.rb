require 'aria_sdk/aria_rest_client'

class AriaCoreRestClient < AriaRestClient

  attr_reader :prod

  def initialize client_no, auth_key, prod = false
    @prod = prod

    url = if prod
            'https://secure.ariasystems.net/api/ws/api_ws_class_dispatcher.php'
          else
            'https://secure.future.stage.ariasystems.net/api/ws/api_ws_class_dispatcher.php'
          end

    super client_no, auth_key, url
  end

end
