# encoding: UTF-8

require_relative '../spec/spec_helper'
# テスト対象を読み込む(relativeは相対パスで読み込む)
# require_relative '../src/test/hello'

RSpec.describe Hello do
  it 'message assert' do
    expect(Hello.new.say).to eq "hello!"
  end
end
