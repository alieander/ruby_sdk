Aria Systems Ruby SDK
============

The Aria Systems Ruby SDK supports Aria Systems' Core, Object Query, and AdminTools REST APIs. It is a simple way to integrate your Ruby application with Aria Systems billing solutions.

Examples
-----------

```ruby
api = AriaCoreRestClient.new(CLIENT_NO, AUTH_KEY)

puts api.call('get_client_currencies')
```
