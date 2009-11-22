require 'application'

Bundler.require_env(:test)

require 'rack/test'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

Spec::Runner.configure do |config|

  config.before :all do
    # TODO: Future awesomeness: http://github.com/dsturnbull/rackjour
    # puts "find a server to run this spec..."
  end

end