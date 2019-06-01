# encoding: UTF-8
#特にgenとか追加しなくてもJSONデータを扱えた
require 'json'

hash = {'a' => 'aaa', 'b' => 'bbb'} #ハッシュを生成

hash.each do |a|
  p a
end
p hash.class

jstr = JSON.generate(hash) #ハッシュをJSON形式に変換する
p jstr

rawData = '{"name" : {"mike" : "20", "alice" : "30"}}' #json形式のデータ

jdata = JSON.parse(rawData)  #jsonからハッシュに変換する
p jdata
