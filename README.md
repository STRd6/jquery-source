# Jquery::Source

Wrap jQuery in a gem so that we can have bundler manage JavaScript library version dependencies. The version of this gem corresponds to the version of jQuery included.

## Installation

Add this line to your application's Gemfile:

    gem 'jquery-source'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery-source

## Usage

From your `application.js` use `//= require jquery` or `#= require jquery` if you're using CoffeeScript.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
