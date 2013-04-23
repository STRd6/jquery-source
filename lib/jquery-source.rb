require "jquery-source/version"

# Check for Rails or Sprockets
if defined? ::Rails::Engine
  class Engine < ::Rails::Engine
    config.paths['app/assets'] = "source"
  end
elsif defined? ::Sprockets
  root_dir = File.expand_path(File.dirname(File.dirname(__FILE__)))
  asset_dir = File.join(root_dir, "source")

  ::Sprockets.append_path asset_dir
end
