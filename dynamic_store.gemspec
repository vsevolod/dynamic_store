$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dynamic_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dynamic_store"
  s.version     = DynamicStore::VERSION
  s.authors     = ["Vsevolod"]
  s.email       = ["gsevka@gmail.com"]
  s.homepage    = "http://github.com/vsevolod"
  s.summary     = "Dynamic activerecord store"
  s.description = "Allow to setup dynamic store columns form activerecord model"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'activerecord', '~> 4.2.3'
  s.add_dependency 'ancestry'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'factory_bot'
end
