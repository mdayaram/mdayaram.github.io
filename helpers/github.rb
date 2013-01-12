require 'httpclient'

module Github

  def github_fetch(path, branch="master", account="mdayaram")
    project, path = path.split('/', 2)
    path = "README.md" if path.nil? or path.empty?
    page = "https://raw.github.com/#{account}/#{project}/#{branch}/#{path}"
    fix_links(HTTPClient.new.get_content(page), account)
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

  private

  def fix_links(content, account="mdayaram")
    content.gsub(/\[(.*?)\]\(https:\/\/github\.com\/#{account}\/(.*?)\/blob\/.*?\/(.*?\.md)\)/, '[\1](/p/\2/\3)')
  end
end

