Gem::Specification.new do |spec|
  spec.name          = "delti"
  spec.version       = "1.0.0"
  spec.authors       = ["Aaron Christiansen"]
  spec.email         = ["hello@aaronc.cc"]

  spec.summary       = "Effortless delta time calculation within loops"
  spec.homepage      = "https://github.com/AaronC81/delti"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
