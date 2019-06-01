# encoding: UTF-8
require 'mysql2'
require 'yaml'

# データソースを取得する
path = './conf/dataSource.yml'
source = YAML.load_file(path)

# DBに接続する(データソースから取得した値を使用する)
client = Mysql2::Client.new(:host => source['database']['host'], :username => source['database']['username'], :password => source['database']['password'], :database => source['database']['database'])

# クエリを実行する
statement = client.query('select * from sample.person')

#where句を設定すrるパターン
statement2 = client.prepare('select * from person where id = ?')
#?に入る値を設定する
result = statement2.execute(1)

#結果を出力する
statement.each do |s|
  p s
  p s['first_name']
end
result.each do |r|
  p r
  p r['first_name']
end
