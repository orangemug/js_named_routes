require 'named_routes'
require 'asset_tag_helper'

require 'dispatcher'

ActionController::Dispatcher.to_prepare :named_routes_route do
  ::NamedRoutes::ControllerMethods.add_routes
end

controller_path = File.join(File.dirname(__FILE__), 'controllers')
$LOAD_PATH << controller_path
::Dependencies.load_paths << controller_path