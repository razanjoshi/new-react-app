# -*- encoding: utf-8 -*-
# stub: rbcat 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rbcat".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Victor Afanasev".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-09-02"
  s.description = "Colorize output by defined set of regex rules".freeze
  s.email = ["vicfreefly@gmail.com".freeze]
  s.executables = ["rbcat".freeze]
  s.files = ["exe/rbcat".freeze]
  s.homepage = "https://github.com/vifreefly/rbcat".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Colorize output by defined set of regex rules".freeze

  s.installed_by_version = "3.0.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
