
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "utc_on_demand/version"

Gem::Specification.new do |spec|
  spec.name          = "utc_on_demand"
  spec.version       = UtcOnDemand::VERSION
  spec.authors       = ["Reid Cooper"]
  spec.email         = ["reid.cooper8@gmail.com"]

  spec.summary       = "Display your machine's current time (in your timezone) and in UTC."
  spec.homepage      = "https://github.com/reidcooper/utc_on_demand"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
