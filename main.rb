#!/usr/bin/env ruby

require 'rubygems'

require 'sinatra'
require 'sinatra/content_for'
require 'sinatra/multi_route'

# Templating
require 'haml'
require 'sass'

# Helpers
require './helpers/contacts'
require './helpers/friends'
require './helpers/styles'
require './helpers/currently'
helpers Contacts, Friends, Styles, Currently

# Configuration
set :haml, { :format => :html5 }

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

