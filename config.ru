require 'application'

use Rack::Session::Cookie
use Rack::ShowExceptions
use Rack::Static, :urls => [ '/favicon.ico', '/css' ], :root => "public"

run Application