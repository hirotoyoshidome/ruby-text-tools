# encoding: UTF-8

#cssのminimizeを行う
dir = './input/target.css'
input = File.open(dir, 'r+')
name = File.basename(dir)
contents = input.read
input.close

contents.strip!  #これだと行間の空白は取り除けない(lstrip, rstripも同様)

contents.gsub!(' ', '') #これですべての空白を取り除く(正規表現を使用)

contents.gsub!(/(\n|\r\n|\r)/, '') #改行コードを置換する(CRLF, LF対応)

output = File.open('./output/min-' + name, 'a+') #出力
output.puts contents
output.close
