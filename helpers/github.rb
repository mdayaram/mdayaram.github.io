require 'httpclient'

module Github

  def github_fetch(path, branch="master", account="mdayaram")
    project, path = path.split('/', 2)
    path = "README.md" if path.nil? or path.empty?
    page = "https://raw.github.com/#{account}/#{project}/#{branch}/#{path}"
    HTTPClient.new.get_content(page)
  end

  def github_markdown(path, branch="master", account="mdayaram")
    page = github_fetch(path, branch, account).lines.to_a
    haml "templates/markdown".to_sym, 
      :locals => 
        { :page => "hugs", 
          :title => page[0], 
          :input => page[2..-1].join
        }
  end

end

