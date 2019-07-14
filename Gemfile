source "https://rubygems.org"

group :jekyll_plugins do
    gem "github-pages"
    gem "jekyll-feed"
    gem "jekyll-paginate"
    gem "jekyll-seo-tag"
    gem "jekyll-sitemap"
    gem "jemoji"
end

install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
    gem "tzinfo", "~> 1.2.5"
    gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?
