#!/usr/bin/env ruby

require 'rubygems'

require 'sinatra'
require 'sinatra/content_for'
require 'sinatra/multi_route'

# Templating
require 'haml'
require 'sass'
require 'glorify'

# Helpers
require './helpers/contacts'
require './helpers/friends'
require './helpers/styles'
require './helpers/currently'
helpers Contacts, Friends, Styles, Currently

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

require 'httpclient'
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

