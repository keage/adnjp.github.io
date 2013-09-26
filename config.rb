require 'slim/smart'

Time.zone = 'Tokyo'

# Ignore, I18n, and blogs are ordered below for a localised blog

ignore %r{^blog/}

activate :i18n, mount_at_root: false, path: '/:locale/'

activate :blog do |blog|
  blog.name = 'en'
  blog.permalink = 'en/blog/:title.html'
  blog.sources = 'en/blog/:year-:month-:day-:title.html'
  blog.taglink = 'en/blog/:tag.html'
end

activate :blog do |blog|
  blog.name = 'ja'
  blog.permalink = 'ja/blog/:title.html'
  blog.sources = 'ja/blog/:year-:month-:day-:title.html'
  blog.taglink = 'ja/blog/:tag.html'
end

activate :directory_indexes
activate :livereload

set :css_dir, 'css'
set :images_dir, 'images'
set :js_dir, 'js'
set :partials_dir, 'partials'