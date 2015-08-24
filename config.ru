require 'bundler'
Bundler.require()

require "./models/food"
require "./models/order"
require "./models/party"
require "./models/server"

require "./controllers/application_controller"
require "./controllers/foods_controller"
require "./controllers/orders_controller"
require "./controllers/parties_controller"
require "./controllers/servers_controller"

map('/'){run ServersController}
map('/parties'){run PartiesController}
map('/orders'){run OrdersController}
map('/food'){run FoodsController}
