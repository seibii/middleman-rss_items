# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-rss_items"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Seibii, Inc.', 'unhappychoice']
  s.email       = ["seibii.it@seibii.com"]
  s.homepage    = "https://github.com/seibii"
  s.summary     = %q{Middleman plugin to make RSS feed}
  s.description = %q{This plugin adds methods to create RSS feed like html}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("middleman-core", [">= 4.3.5"])
  s.add_runtime_dependency "feedjira"
end
