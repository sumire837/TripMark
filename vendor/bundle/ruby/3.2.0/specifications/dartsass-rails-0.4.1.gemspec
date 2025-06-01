# -*- encoding: utf-8 -*-
# stub: dartsass-rails 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "dartsass-rails".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/rails/dartsass-rails", "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.bindir = "exe".freeze
  s.date = "2022-12-16"
  s.email = "david@hey.com".freeze
  s.executables = ["dartsass".freeze]
  s.files = ["exe/dartsass".freeze]
  s.homepage = "https://github.com/rails/dartsass-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Integrate Dart Sass with the asset pipeline in Rails.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<railties>.freeze, [">= 6.0.0"])
end
