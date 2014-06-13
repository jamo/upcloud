# Upcloud

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'upcloud'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install upcloud

## Features

* [x] Account       - print account info
* [x] List          - list resources
* [x] Price         - print pricing details
* [x] Start         - start server by UUID - TODO: add other identification methos
* [x] Stop          - stop server by UUID - TODO: add other identification  methos
* [x] ServerSize    - list available server sizes
* [x] Zone          - list zones
* [x] Timezone      - list timezones

## TODO

* [ ] Implement Server states - [started, stopped, maintenance, error]
* [ ] Implement Server Creation (7.5, p21)


## Implementation details

It stores your credentials in $HOME/.upcloud as plaintext - for http
basic auth - TODO: just keep username and HTTP Basic token
## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/upcloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
