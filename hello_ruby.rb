# -*- encoding: utf-8 -*-

require 'rubygems'
require 'mechanize'
require 'kconv'

agent = Mechanize.new
agent.get('http://www.google.co.jp/')
agent.page.form_with(:name => 'f'){|form|
  form['q'] = 'Ruby'
  form.click_button
}
agent.page.link_with(:text => "オブジェクト指向スクリプト言語 Ruby".toutf8).click
puts agent.page.uri
puts agent.page.at('div#logo/img')['alt']
