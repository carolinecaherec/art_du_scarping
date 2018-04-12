# Trader de l'obscur

require 'nokogiri'
require 'open-uri'

def trader_obscur

      # set URL to point to where the page exists
  url = 'https://coinmarketcap.com/all/views/all/'
  page = Nokogiri::HTML(open(url))

    i = 0
  page.css('.currency-name-container').each do |name|
  puts name.content + " : " + page.css(".price")[i].content
  i+=1
  end
end
trader_obscur()
