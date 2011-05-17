# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "day-of-the-week/version"

Gem::Specification.new do |s|
  s.name        = "day-of-the-week"
  s.version     = DayOfTheWeek::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Juan de Bravo"]
  s.email       = ["juandebravo@gmail.com"]
  s.homepage    = "http://github.com/juandebraco/day-of-the-week"
  s.summary     = %q{This gem helps you to get the week day of a specific date}
  s.description = %q{This gem helps you to get the week day of a specific date}

  s.rubyforge_project = "day-of-the-week"

  #s.add_dependency("params-validator")
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
