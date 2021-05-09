# -*- encoding: utf-8 -*-
# stub: headless 2.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "headless".freeze
  s.version = "2.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Leonid Shevtsov".freeze]
  s.date = "2016-08-25"
  s.description = "    Headless is a Ruby interface for Xvfb. It allows you to create a headless display straight from Ruby code, hiding some low-level action.\n".freeze
  s.email = "leonid@shevtsov.me".freeze
  s.homepage = "http://leonid.shevtsov.me/en/headless".freeze
  s.licenses = ["MIT".freeze]
  s.requirements = ["Xvfb".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Ruby headless display interface".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
  end
end
