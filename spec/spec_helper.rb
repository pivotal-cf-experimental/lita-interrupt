require "lita-cf"
require "lita/rspec"

# A compatibility mode is provided for older plugins upgrading from Lita 3. Since this plugin
# was generated with Lita 4, the compatibility mode should be left disabled.
Lita.version_3_compatibility_mode = false

RSpec.configure do |config|
  config.before do
    registry.register_hook(:validate_route, Lita::Extensions::ExclusiveRoute)
  end
end
