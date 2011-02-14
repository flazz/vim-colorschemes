require 'pp'
require 'yaml'

data = YAML.load_file 'links'

bad_names = File.read('not.vim').split "\n"

bad_data = data.select { |name, url| bad_names.include? name }

bad_data.each do |name, url|
  puts "- [#{name}](#{url})"
end
