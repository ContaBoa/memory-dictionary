# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "memory_dictionary/version"

Gem::Specification.new do |s|
  s.name                  = "memory_dictionary"
  s.version               = MemoryDictionary::Version::STRING
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = ">= 2.1.0"
  s.authors               = ["Lucas Martins"]
  s.email                 = ["lucasmartins@railsnapraia.com"]
  s.homepage              = "http://rubygems.org/gems/memory_dictionary"
  s.summary               = "A general purposed memory dictionary for quick and dirty translations."
  s.description           = s.summary
  s.license               = "LGPL-3.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if RUBY_ENGINE=='rbx'
    s.add_dependency 'rubysl'
  end
  if RUBY_PLATFORM=='ruby'
    s.add_dependency 'yajl-ruby'
  end

  s.add_dependency 'mongoid', '~> 5.1'

  s.add_development_dependency "rspec", "~> 2.1"
  s.add_development_dependency "rspec-mocks", "~> 2.1"
  s.add_development_dependency "rspec-expectations", "~> 2.1"
  s.add_development_dependency "database_cleaner", '~> 0'
  s.add_development_dependency "factory_girl", '~> 0'
  s.add_development_dependency "rake", '~> 0'
  s.add_development_dependency "pry", '~> 0'
  s.add_development_dependency "pry-nav", '~> 0'
  s.add_development_dependency "yard", '~> 0'
end
