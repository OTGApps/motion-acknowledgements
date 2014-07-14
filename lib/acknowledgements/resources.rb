class Motion::Project::App
  class << self
    #
    # The original `build' method can be found here:
    # https://github.com/HipByte/RubyMotion/blob/master/lib/motion/project/app.rb#L75-L77
    #
    alias_method :build_before_copy_acknowledgements, :build
    def build platform, options = {}
      acknowledgements = MotionAcknowledgements::Settings.new
      root_path = acknowledgements.plist_file

      unless File.exist? root_path
        warn 'Please run: `rake acknowledgements:generate` in order to create a Settings.bundle or remove the motion-acknowledgements gem from your project.'
        abort
      end

      # Run the normal build process.
      build_before_copy_acknowledgements(platform, options)
      # Now the app is built, but not codesigned yet.

      destination = File.join(config.app_bundle(platform), 'Settings.bundle/Acknowledgements.plist')
      pods_path = 'vendor/Pods/Pods-acknowledgements.plist'

      if File.exist? pods_path
        info 'Copy', destination
        FileUtils.cp_r(pods_path, destination, :remove_destination => true)
      else
        warn 'Could not find CocoaPods Acnkowledgement file.'
      end
    end
  end
end
