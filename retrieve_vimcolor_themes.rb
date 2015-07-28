require 'json'
require 'open-uri'
require 'fileutils'
require 'uri'

base_url = "http://vimcolors.com/api/colorschemes"

FileUtils.mkdir_p "repos"
Dir.chdir "repos"

# Get up to 20 pages of colorschemes
(1..20).each do |i|
  json = JSON.parse(open("#{base_url}?page=#{i}").read)

  # Quit if at end of the list
  break if json["colorschemes"].nil?

  # For each colorscheme, clone the git repo
  json["colorschemes"].each do |colorscheme|
    github_repo = colorscheme["github_repo"]["address"]
    uri = URI(github_repo)
    system("git clone git@github.com:#{uri.path}")
  end
  sleep 1
end

# Copy files into the colors directory
Dir.chdir ".."
system("cp repos/*/colors/*.vim colors/")
