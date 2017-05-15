# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_production_logs/version'

Gem::Specification.new do |spec|
  spec.name          = "solidus_production_logs"
  spec.version       = SolidusProductionLogs::VERSION
  spec.authors       = ["Brian Buchalter"]
  spec.email         = ["bal711@gmail.com"]

  spec.summary       = %q{Single line request logging with Solidus specific data.}
  spec.description   = %q{JSON formatted, single-line log data with Solidus order numbers and usernames when available.}
  spec.homepage      = "https://github.com/bbuchalter/solidus_production_logs"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
=begin
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
=end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  solidus_version = [">= 1.0.6", "< 3"]

  spec.required_ruby_version = ">= 2.1"

  spec.add_development_dependency "solidus_backend", solidus_version
  spec.add_development_dependency "solidus_frontend", solidus_version
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails", "~> 3.6"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
