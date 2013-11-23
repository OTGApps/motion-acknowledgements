# -*- encoding: utf-8 -*-
require File.expand_path('../lib/acknowledgements/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "motion-acknowledgements"
  spec.version       = MotionAcknowledgements::VERSION
  spec.authors       = ["Mark Rickert"]
  spec.email         = ["mjar81@gmail.com"]
  spec.description   = "This RubyMotion specific gem makes it easy to include the CocoaPods acknowledgements file in your application. Simply add to your bundle file, run `rake acknowledgements:generate` and each time you build your application, the CocoaPods acknowledgements file will be copied over to your Settings.bundle. This then adds an entry for your app into the system's Settings.app with an 'Acknowledgements' submenu."
  spec.summary       = "This RubyMotion specific gem makes it easy to include the CocoaPods acknowledgements file in your application."
  spec.homepage      = "https://github.com/MohawkApps/motion-acknowledgements"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
