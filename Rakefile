require File.join(File.expand_path(File.dirname(__FILE__)), 'vendor', 'gems', 'environment')

Bundler.require_env(:test)

task :default => :spec

Dir['tasks/*.rake'].each { |task| load task }