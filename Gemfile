source "https://rubygems.org"
# ruby RUBY_VERSION

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!

gem "github-pages", group: :jekyll_plugins

# If you want to use Jekyll native, uncomment the line below.
# To upgrade, run `bundle update`.
# We'll need rake to build our site in TravisCI
gem "rake", "~> 12"
gem "jekyll", "~> 3.5"
gem "wdm", "~> 0.1.0" if Gem.win_platform?
gem 'unicode_utils', require: false unless RUBY_VERSION >= '2.4'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-archives"
  gem "jekyll-feed"
  gem 'jekyll-sitemap'
  gem 'hawkins'
  gem 'jekyll-katex'
  gem 'jekyll-scholar'
  gem 'jekyll-include-cache'
  gem "minimal-mistakes-jekyll"
end
