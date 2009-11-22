require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))

Bundler.require_env(:app)

class Application < Sinatra::Base
  get "/" do
    haml :index
  end
end