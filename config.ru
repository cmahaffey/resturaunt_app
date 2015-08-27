require 'bundler'
Bundler.require()

require "./models/food"
require "./models/item"
require "./models/party"
require "./models/server"
require "./models/chef"

require "./controllers/application_controller"
require "./controllers/servers_controller"
require "./controllers/foods_controllers"
require "./controllers/items_controller"
require "./controllers/parties_controller"
require "./controllers/chefs_controller"
require "./controllers/welcome_controller"

map('/'){run WelcomeController}
map('/servers'){run ServersController}
map('/parties'){run PartiesController}
map('/items'){run ItemsController}
map('/foods'){run FoodsController}
map('/chefs'){run ChefsController}
