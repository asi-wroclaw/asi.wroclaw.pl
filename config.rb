# frozen_string_literal: true

Haml::TempleEngine.disable_option_validator!
set :haml, format: :html5
I18n.default_locale = :pl
Time.zone = "Europe/Warsaw"

###
# Page options, layouts, aliases and proxies
###

page "/index.html", layout: "default"
page "/about.html", layout: "default"
page "/contact.html", layout: "default"
page "/events.html", layout: "default"
page "/recruitment.html", layout: "default"
page "/members.html", layout: "default"
page "/page/*", layout: "default"
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

###
# Helpers
###

activate :i18n, mount_at_root: :pl
activate :directory_indexes
activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "default"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false
# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify HTML on build
  activate :minify_html

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

end
