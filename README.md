# motion-acknowledgements

[![Code Climate](https://codeclimate.com/github/MohawkApps/motion-acknowledgements.png)](https://codeclimate.com/github/MohawkApps/motion-acknowledgements) [![Gem Version](https://badge.fury.io/rb/motion-acknowledgements.svg)](http://badge.fury.io/rb/motion-acknowledgements)

This RubyMotion specific gem makes it easy to include the CocoaPods acknowledgements file in your application. Simply add to your bundle file, run `rake acknowledgements:generate` and each time you build your application, the CocoaPods acknowledgements file will be copied over to your Settings.bundle. This then adds an entry for your app into the system's Settings.app with an 'Acknowledgements' submenu.

[Read more about the CocoaPods acknowledgement file here.](https://github.com/CocoaPods/CocoaPods/wiki/Acknowledgements)

## Installation

Add this line to your application's Gemfile:

    gem 'motion-acknowledgements'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-acknowledgements

## Usage

If you don't have a `resources/Settings.bundle` file, this gem can create one for you.

Run `rake acknowledgements:generate` and a `resources/Settings.bundle/Root.plist` will be created with the proper content. Feel free to edit this file, but watch out - running that rake command again will undo your changes.

## Automation

`motion-acknowledgements` extends your app's build process to copy over the `vendor/Pods/Pods-acknowledgements.plist` file to your compiled binary (into the `Settings.bundle` file) at the end of the build process. This acknowledgements file is [automatically generated](https://github.com/CocoaPods/CocoaPods/wiki/Acknowledgements) by the `rake pod:install` command.

## Screenshots

![ios simulator screen shot nov 23 2013 11 58 35 am](https://f.cloud.github.com/assets/139261/1606878/a8ba7e02-5460-11e3-83ef-627ae62308c6.png) ![ios simulator screen shot nov 23 2013 11 58 41 am](https://f.cloud.github.com/assets/139261/1606879/aa33e142-5460-11e3-932a-a5bc2d5f8208.png)
![ios simulator screen shot nov 23 2013 11 58 43 am](https://f.cloud.github.com/assets/139261/1606880/acfb72a0-5460-11e3-8fcc-895b88c40f0d.png) ![ios simulator screen shot nov 23 2013 11 58 45 am](https://f.cloud.github.com/assets/139261/1606881/aecacd88-5460-11e3-98c1-521ec29d84d8.png)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
