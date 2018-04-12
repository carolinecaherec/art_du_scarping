#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://www.decathlon.fr/Acheter/chaussures'))

puts "### Search for nodes by css"

i = 0
doc.css(".product-label").each do |label|
  puts label.content + doc.css(".price")[i].content

  i+=1
end
