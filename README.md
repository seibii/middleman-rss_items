# middleman-rss_items
[![Gem Version](https://badge.fury.io/rb/middleman-rss_items.svg)](https://badge.fury.io/rb/middleman-rss_items)
[![Circle CI](https://circleci.com/gh/seibii/middleman-rss_items.svg?style=shield)](https://circleci.com/gh/seibii/middleman-rss_items)
[![Code Climate](https://codeclimate.com/github/seibii/middleman-rss_items/badges/gpa.svg)](https://codeclimate.com/github/seibii/middleman-rss_items)
[![codecov](https://codecov.io/gh/seibii/middleman-rss_items/branch/master/graph/badge.svg)](https://codecov.io/gh/seibii/middleman-rss_items)
[![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/seibii/middleman-rss_items.svg)](https://libraries.io/github/seibii/middleman-rss_items)
![](http://ruby-gem-downloads-badge.herokuapp.com/middleman-rss_items?type=total)
![GitHub](https://img.shields.io/github/license/seibii/middleman-rss_items.svg)

`middleman-rss_items` provide a method to get RSS resources and create RSS feed like html.

## Installation

Add middleman-rss_item to your Gemfile:

```ruby
gem "middleman-rss_item"
```

## Configuration

In `config.rb`

```ruby
activate :rss_item do |rss_item|
  rss.rss_resources = [ # Websites you want to display
    {
      name: :blog, # name to be accessed by template
      url: 'https://blog.seibii.co.jp/rss/' # RSS url
    }
  ]
end
```

## Usage

In your templates

```erb
<% rss_items[:blog].each do |rss_item| %>
  <%= rss_item.title %>
  br
  <%= rss_item.summary %>
  br
  <%= rss_item.url %>
  br
  <%= rss_item.published %>
  br
  <%= rss_item.image %>
<% end %>
```

This gem using [feedjira](https://github.com/feedjira/feedjira) as parser and the `rss_item` is object of that.
So, please checkout [feedjira](https://github.com/feedjira/feedjira) about the objects.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/seibii/middleman-rss_items. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the middleman-rss_items project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/seibii/middleman-rss_items/blob/master/CODE_OF_CONDUCT.md).
