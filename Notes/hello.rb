require 'HTTParty'
require 'nokogiri'

response = HTTParty.get("http://finance.yahoo.com/q?s=AAPL")

dom = Nokogiri::HTML(response.body)

# p dom.xpath("//span").size

stock_price_span = dom.xpath("//span[@id='yfs_l84_aapl']")

stock_price_item = stock_price_span.first

i = 0
until i == 10
  sleep 5
  p stock_price_item.text
  i += 1
end