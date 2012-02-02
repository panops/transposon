lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'transposon/version'

Gem::Specification.new do |s|
  s.name = "transposon"
  s.version = Transposon::Version.to_standard_version_s
  s.platform = Gem::Platform::RUBY
  s.authors = ["Justin 'J' Lynn"]
  s.email = ["j@jaesharp.com"]
  s.homepage = "https://github.com/justinlynn/transposon"
  s.summary = "A brokerless agent-based message routing and delivery system"
  s.description = ["A brokerless agent-based message routing and delivery system. Uses EIGRP like routing protocols to move messages reliably between multiple machines.",
                   "A Transposon System consists of a background agent process, and a small shim client library which enables local communication between the application and transposon agent over unix domain sockets.",
                   "The background agent manages message reliablility and interagent message transfer.",
                   "This design simplifies client code (you don't need to multithread, etc.) and increases security as the network communications are religated to a minimally privilieged process in a separate address space."].join(' ')

  s.required_rubygems_version = ">= 1.8.15"

  s.add_development_dependency "rspec", "~> 2.8.0"

  s.files = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md ARCHITECTURE.md)
  s.executables = ['txpsn']
  s.require_path = 'lib'
end
