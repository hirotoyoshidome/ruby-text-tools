# encoding: UTF-8

require 'yaml'

path = './conf/sample.yml'

conf = YAML.load_file(path)

puts conf['num'] #10

puts conf['str'] #it is Hash.

puts conf['a'] #{"b" => 20}
puts conf['a']['b'] #20
puts conf['ary'] # List1 List2
