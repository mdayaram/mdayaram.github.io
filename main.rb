require 'rubygems'
require 'sinatra'

# Templating
require 'haml'
require 'sass'

# Helpers
require './helpers/contacts'
require './helpers/images'
require './helpers/friends'
helpers Contacts, Images, Friends

# Configuration
set :haml, { :format => :html5 }

# Stylesheets
get "/stylesheets/:sheet.css" do |sheet|
  content_type 'text/css', :charset => 'utf-8'
  if sheet.nil? or sheet.empty?
    return 404
  end
  scss "stylesheets/#{sheet}".to_sym, :charset => "utf-8"
end

# Normal pages
[ "/", "/index.html"].each do |path|
  get path do
    haml "index.html".to_sym
  end
end
