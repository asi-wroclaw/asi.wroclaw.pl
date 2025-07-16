Haml::Template.options[:escape_attrs] = false
Haml::Template.options[:escape_html] = false

set :haml, format: :html5
I18n.default_locale = :pl
Time.zone = "Europe/Warsaw"

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page "/index.html", layout: "default"
page "/about.html", layout: "default"
page "/contact.html", layout: "default"
page "/events.html", layout: "default"
page "/recruitment.html", layout: "default"
page "/members.html", layout: "default"
page "/projects.html", layout: "default"
page "/page/*", layout: "default"

# With no layout
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :i18n, mount_at_root: :pl
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

  # blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Helpers
# Methods defined in the helpers block are available in templates

# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  # Minify HTML on build
  activate :minify_html

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript, compressor: Terser.new
end
