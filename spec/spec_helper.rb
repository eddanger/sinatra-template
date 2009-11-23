require 'application'

ENV['RACK_ENV'] ||= 'test'

require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'vendor', 'gems', 'environment')

Bundler.require_env(:test)

require 'rack/test'
require 'spec'
require 'spec/autorun'

# %w(fixtures support).each do |path|
#   Dir[ File.join(project_root, path, '/**/*.rb') ].each do |m|
#     require m
#   end
# end

Spec::Runner.configure do |config|
  config.include(Rack::Test::Methods)
 
  def app
    @app ||= Rack::Builder.app do
      use Rack::Session::Cookie

      # use Warden::Manager do |manager|
      #   manager.default_strategies :password
      #   manager.failure_app = TestingLogin
      # end

      # use Rack::Flash

      run Application
    end
  end
end