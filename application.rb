require File.join(File.expand_path(File.dirname(__FILE__)), 'vendor', 'gems', 'environment')

Bundler.require_env(:app)

class Application < Sinatra::Base

  configure do
    enable :static
    set :root, File.dirname(__FILE__)
  end  
  
  get "/" do
    haml :index
  end

end