Gem::Specification.new do |s|
  s.name        = 'aria_sdk'
  s.version     = '0.2.3'
  s.date        = '2014-10-14'
  s.summary     = 'A wrapper for the Aria Systems REST and SOAP APIs'
  s.description = 'A set of objects to help connect with the Aria Systems REST and SOAP Core, Object Query, and Admintools APIs.'
  s.authors     = ['Aria Systems, Inc.']
  s.email       = 'support@ariasystems.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://developer.ariasystems.net/'

  s.add_dependency 'httparty', '~> 0.13'
  s.add_dependency 'savon', '~> 2.5'
  s.add_dependency 'json', '~> 1.8'

  s.add_development_dependency 'rspec', '~> 0'
end
