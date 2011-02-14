# run this to get all (first 1000) the colorschemes from vim.org
#
# the file called links will be created, this is a cache of the urls so we
# don't hammer vim.org. just delete links to refresh it

require 'nokogiri'
require 'open-uri'
require 'yaml'
require 'curb'
require 'ruby-debug'

# URL = 'http://www.vim.org/scripts/script_search_results.php?&script_type=color%20scheme&show_me=1000'

URL = 'http://www.vim.org/scripts/'
FILE = 'links'

def get_index
  doc = Nokogiri::HTML open(URL + 'script_search_results.php?&script_type=color%20scheme&show_me=1000')
  as = doc / '//tr[td[position()=2] = "color scheme"]/td[position()=1]/a'
  as.map { |a| URL + a['href'] }
end

def get_script_links
  YAML.load_file FILE
rescue Errno::ENOENT => e
  page_urls = get_index
  downloads = []

  Curl::Multi.get(page_urls, {:follow_location => true}, {:pipeline => true}) do |easy|
    script_doc = Nokogiri::HTML easy.body_str
    a = script_doc % "//tr/td/a[starts-with(@href, 'download_script.php?src_id=')]"

    if a
      url = URL + a['href']
      name = a.text
      downloads << [name, url]
    end

  end

  open(FILE, 'w') { |io| YAML.dump downloads, io }
  downloads
  retry
end

names, urls = get_script_links.transpose

Dir.chdir 'colors' do
  Curl::Multi.download(urls, {:follow_location => true}, {:pipeline => true}, names)
end
