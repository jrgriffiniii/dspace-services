# frozen_string_literal: true

require_relative "lib/dspace/services/version"

Gem::Specification.new do |spec|
  spec.name          = "dspace-services"
  spec.version       = DSpace::Services::VERSION
  spec.authors       = ["jrg5@princeton.edu"]
  spec.email         = ["jrg5@princeton.edu"]

  spec.summary       = "Daemon services for DSpace 5.5 installations"
  spec.description   = "Daemon services for DSpace 5.5 installations"
  spec.homepage      = "https://github.com/pulibrary/pulibrary/dspace-services"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/pulibrary/pulibrary/dspace-services/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
