require 'json'
require 'open-uri'
require 'fileutils'
require 'uri'

base_url = "http://vimcolors.com/api/colorschemes"

FileUtils.mkdir_p "repos"
Dir.chdir "repos"

def clone_repo(github_path)
  pid = Process.spawn("git clone git@github.com:#{github_path}")

  begin
    Timeout.timeout(15) do
      Process.wait(pid)
    end
  rescue Timeout::Error
    puts 'Canceling clone, taking too long'
    Process.kill('TERM', pid)
  end
end

# Get up to 20 pages of colorschemes
(1..20).each do |i|
  json = JSON.parse(open("#{base_url}?page=#{i}").read)

  # Quit if at end of the list
  break if json["colorschemes"].nil?

  # For each colorscheme, clone the git repo
  json["colorschemes"].each do |colorscheme|
    github_repo = colorscheme["github_repo"]["address"]
    begin
    uri = URI(github_repo)
    clone_repo(uri.path)
    rescue URI::InvalidURIError
      # Ignore poorly formatted URIs. Go to next.
    end
  end
  sleep 1
end

# Copy files into the colors directory
Dir.chdir ".."
system("cp repos/*/colors/*.vim colors/")
