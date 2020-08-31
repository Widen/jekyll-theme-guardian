# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-guardian"
  spec.version       = "0.0.1"
  spec.authors       = ["Dan Beghin"]
  spec.email         = ["engineering@widen.com"]

  spec.summary       = "Guardian: A Jekyll theme made by the Widen Developer Relations Committee"
  spec.homepage      = "https://engineering.widen.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_config.yml|assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
