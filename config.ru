require 'rack'
require 'rack/lobster'
require_relative 'rack_app'

use Rack::Reloader, 0
use Rack::CommonLogger
use Rack::ShowExceptions
use RackApp
run Rack::Lobster.new
