require 'rake' unless defined? Rake

namespace :acknowledgements do
  desc "Generates Settings.bundle if one does not already exist"
  task :generate do
    MotionAcknowledgements::Settings.new.write
  end

end
