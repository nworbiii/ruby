require 'httparty'
require 'nokogiri'

response = HTTParty.get('http://finance.yahoo.com/q?s=AMZN')

# puts response.body
puts response.headers['content-type']
dom = Nokogiri::HTML(response.body)
puts dom.class
p dom.xpath("//span[@id='yfs_l84_amzn']").size
p dom.xpath("//span[@id='yfs_l84_amzn']").class
my_span = dom.xpath("//span[@id='yfs_l84_amzn']").first
puts my_span.content