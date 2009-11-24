require File.join(File.expand_path(File.dirname(__FILE__)), 'vendor', 'gems', 'environment')

Bundler.require_env(:app)

class Application < Sinatra::Base

  configure do
    set :haml, { :attr_wrapper => '"' }
  end  
  
  get "/" do
    haml :index
  end

end