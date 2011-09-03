# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "qedproject/version"

Gem::Specification.new do |s|
  s.name        = "qedproject"
  s.version     = QEDProject::VERSION
  s.authors     = ["Brian P. Hogan"]
  s.email       = ["brianhogan@napcs.com"]
  s.homepage    = "http://qedserver.naocs.com"
  s.summary     = %q{Quickly build a simple web development project for use with QEDServer}
  s.description = %q{Creates a web development project with support for CoffeeScript and Sass, with support for Backbone, Knockout, and more. }

  s.rubyforge_project = "qedproject"

  s.files         = [
    "bin/qedproject",
    "lib/qedproject.rb",
    "lib/qedproject/version.rb",
    "lib/qedproject/project.rb",
    "lib/qedproject/helpers.rb",
    "lib/qedproject/libraries/base.rb",
    "lib/qedproject/libraries/jquery.rb",
    "lib/qedproject/libraries/backbone.rb",
    "lib/qedproject/libraries/knockout.rb",
    "lib/qedproject/libraries/jquerytmpl.rb",
    "lib/qedproject/libraries/skeleton.rb",
    "lib/qedproject/plugins.rb",
    "vendor/backbone/VERSION",
    "vendor/backbone/backbone-min.js",
    "vendor/backbone/json2.js",
    "vendor/backbone/underscore-min.js",
    "vendor/jquery/VERSION",
    "vendor/jquery/jquery-1.6.2.min.js",
    "vendor/jquerytmpl/VERSION",
    "vendor/jquerytmpl/jquery.tmpl.min.js",
    "vendor/knockout/VERSION",
    "vendor/knockout/knockout-1.2.1.js",
    "vendor/skeleton/VERSION",
    "vendor/skeleton/tabs.js",
    "vendor/skeleton/apple-touch-icon-114x114.png",
    "vendor/skeleton/apple-touch-icon-72x72.png",
    "vendor/skeleton/apple-touch-icon.png",
    "vendor/skeleton/base.css",
    "vendor/skeleton/templates/index.html",
    "vendor/skeleton/layout.css",
    "vendor/skeleton/favicon.ico",
    "vendor/skeleton/skeleton.css",
    "vendor/jasmine/lib/jasmine-1.0.2/jasmine-html.js",
    "vendor/jasmine/lib/jasmine-1.0.2/jasmine.css",
    "vendor/jasmine/lib/jasmine-1.0.2/jasmine.js",
    "templates/assets.yml",
    "templates/Guardfile",
    "templates/sampleSpec.coffee",
    "templates/sampleSpec.js",
    "templates/suite.html",
    "templates/index.html",
    "templates/Rakefile"
    
  
  ]
  s.executables   = "qedproject"
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "coffee-script"
  s.add_runtime_dependency "sass"
  s.add_runtime_dependency "jammit"
  s.add_runtime_dependency "rake"
  s.add_runtime_dependency "guard"
  s.add_runtime_dependency "guard-jammit"
  s.add_runtime_dependency "guard-coffeescript"
  s.add_runtime_dependency "guard-sass"
  # s.add_runtime_dependency "rest-client"
end
