#!/usr/bin/env ruby

require 'rubygems'

# Templating
require 'haml'
require 'sass'
require 'glorify'

# Special templating for markdown in haml layout
require './renderers/haml_markdown'

# Server and server plugins
require 'sinatra'
require 'sinatra/content_for'
require 'sinatra/multi_route'

# Misc gems used for personal stuff.
require 'httpclient'

# Helpers
require './helpers/contacts'
require './helpers/friends'
require './helpers/layout'
require './helpers/currently'
helpers Contacts, Friends, Layout, Currently

# Configuration
set :haml, { :format => :html5 }
Tilt.prefer Sinatra::Glorify::Template

# Stylesheets
get "/styles/:sheet.css" do |sheet|
  content_type 'text/css', :charset => 'utf-8'
  if sheet.nil? or sheet.empty?
    return 404
  end
  scss "styles/#{sheet}".to_sym, { :charset => "utf-8" }
end

# Normal pages
get "/", "/index.html" do
    haml :index, :locals => { :page => "index" }
end

get "/everybody-hurts.html", "/hugs.html" do
  hugs_page = "https://raw.github.com/mdayaram/everybodyhurts/master/README.md"
  # Remove the top two lines since they just repeat the title.
  hugs_body = HTTPClient.new.get_content(hugs_page).lines.to_a
  haml "templates/markdown".to_sym, 
    :locals => 
      { :page => "hugs", 
        :title => hugs_body[0], 
        :input => hugs_body[2..-1].join
      }
end

