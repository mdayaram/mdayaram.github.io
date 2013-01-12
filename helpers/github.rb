require 'httpclient'

module Github

  def github_fetch(path, branch="master", account="mdayaram")
    project, path = clean_path(path)
    page = "https://raw.github.com/#{account}/#{project}/#{branch}/#{path}"
    content = HTTPClient.new.get_content(page)
    fix_links(content, account)
  end

  def github_markdown(path, branch="master", account="mdayaram")
    begin
      page = github_fetch(path, branch, account).lines.to_a
    rescue Exception => e
      return 404, "Nothing to see here, move along."
    end

    haml "templates/markdown".to_sym, 
      :locals => 
        { :page => "hugs", 
          :title => page[0], 
          :input => page[2..-1].join
        }
  end

  private

  def clean_path(path)
    project, path = path.split('/', 2)
    path = "README.html" if path.nil? or path.empty?
    path += "README.html" if path.end_with? "/"
    path += "/README.html" if !path.end_with? ".html"
    file, dot, ext = path.rpartition(".")
    [project, "#{file}.md"]
  end

  def fix_links(content, account="mdayaram")
    content.gsub(/\[(.*?)\]\(https:\/\/github\.com\/#{account}\/(.*?)\/blob\/.*?\/(.*?)\.md\)/, '[\1](/p/\2/\3.html)')
  end
end

