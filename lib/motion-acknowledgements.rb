unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  require 'acknowledgements/resources'
end

module MotionAcknowledgements
end

require 'fileutils'
require 'acknowledgements/settings'
require 'acknowledgements/tasks'
