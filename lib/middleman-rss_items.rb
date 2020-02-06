require 'feedjira'
require 'middleman-core'
require 'net/http'

class MiddlemanRssItems < ::Middleman::Extension
  option :rss_resources, false, 'RSS resources to fetch'
  attr_reader :rss_items
  expose_to_template :rss_items

  def initialize(app, options_hash={}, &block)
    super

    @rss_items = {}
  end

  def after_configuration
    options.rss_resources.each do |resource|
      rss = Net::HTTP.get(URI.parse(resource[:url]))
      @rss_items[resource[:name] || resource[:url]] ||= Feedjira.parse(rss).entries
    end
  end
end

Middleman::Extensions.register :rss_items, MiddlemanRssItems
