# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplecov/parallel/version'

Gem::Specification.new do |spec|
  spec.name          = "simplecov-parallel"
  spec.version       = Simplecov::Parallel::VERSION
  spec.authors       = ["Yuji Nakayama"]
  spec.email         = ["nkymyj@gmail.com"]

  spec.summary       = 'Parallelism support for SimpleCov'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/increments/simplecov-parallel'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
end
