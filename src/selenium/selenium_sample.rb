# encoding: UTF-8
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome #ブラウザ起動
driver.navigate.to 'https://www.google.com/'
element = driver.find_element('xpath', '//*[@id="lst-ib"]') #入力フォーム取得
element.send_keys('Ruby最高')
#送信ボタンをクリック(clickメソッドだとエラー)
element_submit = driver.find_element(:name, 'btnK').submit
# タグのbody部を取得
result = driver.find_element(:id, 'resultStats').text
p result
driver.quit
