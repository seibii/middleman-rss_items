require "middleman-core"

Middleman::Extensions.register :middleman-rss_items do
  require "my-extension/extension"
  MyExtension
end
