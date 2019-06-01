# encoding: UTF-8

puts "ss"

9.times do |n|
  puts n*n
end
dir = './input/sample.txt' #path

input = File.open(dir, "r+")
content = input.read
textArray = content.split(', ')

textArray.each do |t|
  text = t << 'です'  #ですを追加
  p text
  text = text.slice(0,2)  #切り取り
  p text
  if(text.include?('名前'))  #含んでいるか
    puts 'ーーーーーーーーー名前ですーーーーーーーーーーー'
  end

  text.gsub!(/名前/, 'name')  # 正規表現リプレイス
  p text

  text << '    '  #空白追加
  p text
  text.strip!
  p text        #空白削除
end
input.close
