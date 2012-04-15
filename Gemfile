source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# My Gems
gem 'haml'
gem 'haml-rails'
gem 'gravatar_image_tag' # gravatar
gem 'tinymce-rails' #wysiwyg
gem 'friendly_id' #pretty url
gem 'sitemap'
gem 'tinymce-rails-imageupload', '~> 3.4.8'
=begin
gem 'spree_editor', :git => 'git://raw.github.com/spree/spree_editor.git'

Bundler could not find compatible versions for gem "jquery-rails":
  In Gemfile:
    spree_editor (>= 0) ruby depends on
      jquery-rails (<= 1.0.19, >= 1.0.18) ruby

    jquery-rails (2.0.1)

=end
group :development, :test do
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'webrat'
  gem 'spork'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
