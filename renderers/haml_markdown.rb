require 'glorify'
require 'redcarpet'

module Filters
  module Markdown
    include Haml::Filters::Base

    def render(text)
      Redcarpet::Markdown.new(Sinatra::Glorify::Renderer.new,
                              Sinatra::Glorify::EXTENSIONS).render(text)
    end
  end
end
