# frozen_string_literal: true

require_relative "lib/slugfy_me/version"

Gem::Specification.new do |spec|
  spec.name = "slugfy_me"
  spec.version = SlugfyMe::VERSION
  spec.authors = ["francilobbie"]
  spec.email = ["francilobbie.lalane@gmail.com"]

  spec.summary       = "An educational Ruby gem to generate simple slugs from strings"
  spec.description   = "SlugfyMe is a minimalist Ruby gem created for the Captain Ruby blog. It helps you generate clean slugs from strings, and was built as an educational project to learn how to build and publish a Ruby gem."

  spec.homepage      = "https://github.com/francilobbie/slugfy_me"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/francilobbie/slugfy_me"
  spec.metadata["changelog_uri"] = "https://github.com/francilobbie/slugfy_me/blob/master/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ Gemfile .gitignore .rspec spec/ .rubocop.yml])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
