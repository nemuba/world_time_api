# frozen_string_literal: true

require_relative "lib/world_time_api/version"

Gem::Specification.new do |spec|
  spec.name          = "world_time_api"
  spec.version       = WorldTimeApi::VERSION
  spec.authors       = ["Alef Ojeda de Oliveira"]
  spec.email         = ["alef.oliveira@inovamind.com.br"]

  spec.summary       = "Api World Time"
  spec.description   = "A API to get world time"
  spec.homepage      = "https://github.com/nemuba/world_time_api"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = "https://github.com/nemuba/world_time_api"
  spec.metadata["source_code_uri"] = "https://github.com/nemuba/world_time_api"
  spec.metadata["changelog_uri"] = "https://github.com/nemuba/world_time_api/blob/main/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://rubydoc.info/github/nemuba/world_time_api/blob/main/doc/index.html"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*", "doc/**/*", "LICENSE.txt", "README.md", "CHANGELOG.md", "CODE_OF_CONDUCT.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_dependency "httparty", "~> 0.20"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
