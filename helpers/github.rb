require 'httpclient'

module Github

  def github_fetch(project, path, branch="master", account="mdayaram")
    page = "https://raw.github.com/#{account}/#{project}/#{branch}/#{path}"
    HTTPClient.new.get_content(page)
  end

  def github_markdown(project, path, branch="master", account="mdayaram")
    page = github_fetch(project, path, branch, account).lines.to_a
    haml "templates/markdown".to_sym, 
      :locals => 
        { :page => "hugs", 
          :title => page[0], 
          :input => page[2..-1].join
        }
  end

end

