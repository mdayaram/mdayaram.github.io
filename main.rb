require 'rubygems'
require 'sinatra'

require 'haml'
require 'sass'

# Configuration
set :haml, :format => :html5


# Stylesheets
get "/stylesheets/:sheet.css" do |sheet|
  content_type 'text/css', :charset => 'utf-8'
  if sheet.nil? or sheet.empty?
    return 404
  end
  scss "stylesheets/#{sheet}".to_sym, :charset => "utf-8"
end

# Normal pages
get "/index.html" do
  haml "index.html".to_sym
end

get "/" do
  haml "index.html".to_sym
end
