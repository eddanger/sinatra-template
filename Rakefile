task :default => :spec
 
begin
  require 'spec/rake/spectask'
rescue LoadError
  task(:spec) { $stderr.puts '`gem install rspec` to run specs' }
else
  desc "Run specs"
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['spec/**/*_spec.rb'] - FileList['spec/fixtures/**/*_spec.rb']
    t.spec_opts = %w(-fs --color)
    t.warning = true
  end
end

Dir['tasks/*.rake'].each { |task| load task }