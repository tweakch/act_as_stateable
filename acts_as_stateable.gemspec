# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "acts_as_stateable/version"

Gem::Specification.new do |s|
  s.name          = "acts_as_stateable"
  s.version       = ActsAsStateable::VERSION
  s.authors       = ["Alexander Klee"]
  s.email         = ["alex.klee@outlook.com"]

  s.summary       = "A gem that lets you add state flags to your active records"
  s.homepage      = "http://www.github.com/tweakch/acts_as_stateable"
  s.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if s.respond_to?(:metadata)
  #  s.metadata["allowed_push_host"] = "http://mygemserver.com"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|s|features)/})
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "activerecord", ">= 3.0"
  s.add_development_dependency "bundler", "~> 1.15"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
