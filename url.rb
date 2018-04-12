# methode 2: recuperer adresses email des villes du Val-d'Oise

require 'nokogiri'
require 'open-uri'

def get_all_the_urls_of_val_doise_townhalls

    # set URL to point to where the page exists
  url = 'http://annuaire-des-mairies.com/95/'
  page = Nokogiri::HTML(open(url))

  links = page.css('a')
  puts links
  links.each do |link|
    puts url + link['href']
  end
end

get_all_the_urls_of_val_doise_townhalls()
