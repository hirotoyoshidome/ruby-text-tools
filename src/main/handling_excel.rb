# encoding: UTF-8
require 'spreadsheet'

Spreadsheet.client_encoding = 'UTF-8' #エンコーディング指定

dir = './input/person.xls'
readbook = Spreadsheet.open(dir)  #読み込み
readsheet = readbook.worksheet('Sheet1')
#カラムを取得する
column1 = readsheet[0,0] #id
column2 = readsheet[0,1] #firast_name
column3 = readsheet[0,2] #last_name
column4 = readsheet[0,3] #age

#valueを設定しSQLを組み立てる
(1..20).each do |i|
  id = readsheet[i, 0].to_s #文字列に変換する
  firstName = readsheet[i, 1]
  lastName = readsheet[i, 2]
  age = readsheet[i, 3].to_s
  query = 'INSERT INTO PERSON(' + column1 + ", " + column2 + ", " + column3 + ", " + column4 + ") VALUES (" + id + ", " + firstName + ", " + lastName + ", " + age + ");"
  p query
end
