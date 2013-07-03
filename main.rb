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

# Helpers
require './helpers/contacts'
require './helpers/friends'
require './helpers/layout'
require './helpers/currently'
require './helpers/github'
helpers Contacts, Friends, Layout, Currently, Github

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

get "/p", "/p/", "/p/index.html" do
  redirect to('/')
end

get "/p/*" do
  github_markdown params[:splat][0]
end

get "/noproxy.txt" do
  "DISALLOW"
end

