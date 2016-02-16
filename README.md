# cocoapods-always-be-bundleing

Do you use CocoaPods on a team? Chances are you want to make sure that everyone is using the same version of CocoaPods. The answer here is to [use a Gemfile](https://guides.cocoapods.org/using/a-gemfile.html). This plugin, once installed will make sure that you use a Gemfile every time you do a `pod install`. 

The alternative is to the use [the CocoaPods.app](http://cocoapods.org/app).

## Installation

    $ gem install cocoapods-always-be-bundleing



### Alternative

If you want to make it specific to a Podfile, add this to the top of your Podfile:

```ruby 
  "Please run `pod install` with bundle exec instead." unless defined?(Bundler)
```

No need for the plugin, this is more for keeping it consistent across all Podfiles.