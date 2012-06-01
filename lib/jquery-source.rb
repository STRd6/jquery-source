require "jquery-source/version"

# Check for Rails or Sprockets
if defined? ::Rails::Engine
  require "jquery-source/rails"
elsif defined? ::Sprockets
  require "jquery-source/sprockets"
end

module Jquery
  module Source
  end
end
