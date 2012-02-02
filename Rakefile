require 'rspec/core/rake_task'


desc 'Default: run all specs.'
task :default => [ :spec ]

desc "Run all specs (unit and integration)"
task :spec => [ :'spec:unit', :'spec:integration' ]

desc "Run unit specs"
RSpec::Core::RakeTask.new :'spec:unit' do |t|
  t.pattern = "./spec/unit/**/*_spec.rb"
end

desc "Run integration specs"
RSpec::Core::RakeTask.new :'spec:integration' do |t|
  t.pattern = "./spec/integration/**/*_spec.rb"
end

desc "Generate code coverage report"
RSpec::Core::RakeTask.new :coverage do |t|
  t.rcov = true
  t.rcov_opts = [ '--exclude', 'spec' ]
end
