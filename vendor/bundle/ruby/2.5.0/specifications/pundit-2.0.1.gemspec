# -*- encoding: utf-8 -*-
# stub: pundit 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pundit".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonas Nicklas".freeze, "Varvet AB".freeze]
  s.date = "2019-01-18"
  s.description = "Object oriented authorization for Rails applications".freeze
  s.email = ["jonas.nicklas@gmail.com".freeze, "dev@elabs.se".freeze]
  s.homepage = "https://github.com/varvet/pundit".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "OO authorization for Rails".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
  end
end
