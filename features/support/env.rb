require "cucumber"
require "httparty"
require "faker"
require "rspec"
require_relative 'helpers'
require_relative 'helpers_requests'

World(Helpers)
World(HelpersRequests)

$end_point = 'http://dummy.restapiexample.com/api/v1'