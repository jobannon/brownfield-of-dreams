# -*- encoding: utf-8 -*-
# stub: jquery 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karl Coelho".freeze]
  s.date = "2014-02-25"
  s.description = "jQuery for Ruby.".freeze
  s.email = ["karl.coelho1@gmail.com".freeze]
  s.homepage = "http://github.com/karlcoelho/jquery-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "jQuery for Ruby.".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.6.1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6.1"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.6.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
