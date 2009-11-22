require 'application'

use Rack::ShowExceptions
 
run Application.new
