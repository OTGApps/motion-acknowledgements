# motion-acknowledgements

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

![screenshot 2013-11-23 11 55 58](https://f.cloud.github.com/assets/139261/1606869/3c36d0d2-5460-11e3-88bb-505d12a2dd11.png) ![screenshot 2013-11-23 11 56 01](https://f.cloud.github.com/assets/139261/1606870/3e0716e2-5460-11e3-8ad1-4c129390c3ae.png) ![screenshot 2013-11-23 11 56 05](https://f.cloud.github.com/assets/139261/1606871/3f8d3564-5460-11e3-9d72-28861f257982.png)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
