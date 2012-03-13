require 'transposon'

# Not automatically required by 'transposon'
require 'transposon/client/examples'

# Require specing infrastructure
require 'rspec'

RSpec.configure do |configuration|
  configuration.mock_with :mocha
end
