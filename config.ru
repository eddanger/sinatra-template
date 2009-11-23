require 'application'

use Rack::Session::Cookie
use Rack::ShowExceptions
 
run Application.new
