# Hato::Plugin::Imkayac

This plugin provides a method to send messages via [im.kayac.com](http://im.kayac.com/).

## Configuration

```ruby
Hato::Config.define do
  api_key 'test'
  host    '0.0.0.0'
  port    9699

  # ...

  tag 'test' do
    plugin 'ImKayac' do
      username 'username'
      password 'yes your password here if you use password authentication'
      secret   'yes your secret key here if you use secret key authentication'
      handler  'handler option'
    end
  end

  # ...
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'hato-plugin-imkayac'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hato-plugin-imkayac

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
